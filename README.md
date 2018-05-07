![GoldKit](images/goldKit-banner.png)

## Why?
GoldKit was created for the purpose of removing the difficulty in creating beautiful UI's.  

## How?
Using the golden ratio we calculate the sizes for a range of different UI elements that are required when creating a diverse and attractive interface.

![Layout of GoldKit sizes](images/goldKit-sizes-2.png)

## What?
An open source framework for helping developer's/engineer's (or really anyone) build beautiful UI's.

## How?
All interaction with *GoldKit* occurs through the ``GoldKit`` singleton class.  We dont want to re-calculate our sizes every time, so access the ``GoldKit`` class through the ``main`` instance.

```swift
let goldKit = GoldKit.main
```
On the first time we access the signleton instance our calculations are made.  We use the ``baseSize = 12`` to make our calculations, and this serves as the smallest font size.  You can override the ``baseSize``, just remember to call the calculation method after.

```swift
...
goldKit.baseSize = 13.0
goldKit.calculate()

```
To access a size just call one of the public methods, passing in a predefined size enum for the given method.

```swift
...
let viewSize = goldKit.viewSize(.large)
// viewSize returns a Double value
// given the baseSize of 12, viewSize is 215.30...
```

*GoldKit* provides a higher level api (more to come) for creating necessary UI elements with the underlying sizes:

```swift
let font = goldKit.font(.medium)
//this will create a UIFont instance (with the default font family)
```
