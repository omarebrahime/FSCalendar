# RTL support version of FSCalendar

This is the powerful, easy and elegant calendar for **iOS** platform. We changed the [FSCalendar](https://github.com/WenchaoD/FSCalendar) for supporting **Righ to Left** calendars such as Persian and Arabic and also support FSCalendar last versions. Thanks to [@WenchaoD](https://github.com/WenchaoD) to create this awesome calendar we just change some part of codes and create useful documenate for **FSCalander** which has support **RTL** calendars.

Please follow read the documentation and see the examples of each feature. Don't forget [star the FSCalendar](https://github.com/WenchaoD/FSCalendar) project to send [@WenchaoD](https://github.com/WenchaoD).

## Table of contents

1. [Screenshots](#screenshots)
2. [Installation](#Installation)
3. [Usage](#Usage)
4. Show event
5. Range selection
6. Scope
7. Add achivements
8. Persian/Arabic calendar
9. Contribution
10. Support

## Screenshots

<table>
<tbody>
<tr>
<td>English</td>
<td>Persian</td>
<td>Arabic</td>
</tr>
<tr>
<td><img src="https://github.com/Husseinhj/FSCalendar/raw/master/docs/Screenshots/English/DIY-Example-en.png"></td>
<td><img src="https://github.com/Husseinhj/FSCalendar/raw/master/docs/Screenshots/Persian/DIY-Example-fa.png"></td>
<td><img src="https://github.com/Husseinhj/FSCalendar/raw/master/docs/Screenshots/Arabic/DIY-Example-ar.png"></td>
</tr>
<tr>
<td><img src="https://github.com/Husseinhj/FSCalendar/raw/master/docs/Screenshots/English/FSCalendarScope-Example-en.png"></td>
<td><img src="https://github.com/Husseinhj/FSCalendar/raw/master/docs/Screenshots/Persian/FSCalendarScope-Example-fa.png"></td>
<td><img src="https://github.com/Husseinhj/FSCalendar/raw/master/docs/Screenshots/Arabic/FSCalendarScope-Example-ar.png"></td>
</tr>
<tr>
<td><img src="https://github.com/Husseinhj/FSCalendar/raw/master/docs/Screenshots/English/Delegate-Appearance-en.png"></td>
<td><img src="https://github.com/Husseinhj/FSCalendar/raw/master/docs/Screenshots/Persian/Delegate-Appearance-fa.png"></td>
<td><img src="https://github.com/Husseinhj/FSCalendar/raw/master/docs/Screenshots/Arabic/Delegate-Appearance-ar.png"></td>
</tr>
<tr>
<td><img src="https://github.com/Husseinhj/FSCalendar/raw/master/docs/Screenshots/English/Range-Picker-Example-en.png"></td>
<td><img src="https://github.com/Husseinhj/FSCalendar/raw/master/docs/Screenshots/Persian/Range-Picker-Example-fa.png"> </td>
<td><img src="https://github.com/Husseinhj/FSCalendar/raw/master/docs/Screenshots/Arabic/Range-Picker-Example-ar.png"></td>
</tr>
</tbody>
</table>

## Installation

Make sure you have [CocoaPods](https://cocoapods.org/) on your Mac OS.

### CocoaPods

1) Add `FSCalendar+Persian` to Podfile:

```ruby
use_frameworks!
target '<Your_Target_Name>' do
    pod 'FSCalendar+Persian'
end
``` 

2) Open terminal app and change current directory to root of your project path and follow this command:

```ruby
pod install
```
### Carthage

Follow the command:
```bash
github "Husseinhj/FSCalendar"
```

## Usage

`Init` FSCalendar and add to view you want to show inside.

``` swift
func initializeFSCalelndar(){
	if self.calendar != nil {
		return
	}
	let frame = CGRect(x: 0,
                       y: 0,
                       width: self.view.bounds.width,
                       height: 300)

	let calendar = FSCalendar(frame: frame)
	
	calendar.dataSource = self
	calendar.delegate = self
	calendar.backgroundColor = UIColor.white
	
	self.calendar = calendar
	self.view.addSubview(calendar)
	self.view.backgroundColor = UIColor.white
}
```

<details> <summary>Objective-C</summary>

```objectivec
#import "FSCalendar.h"

- (void) initializeFSCalendar{
    if (self.fsCalendar) {
        return;
    }
    CGRect frame = CGRectMake(0,
                              0,
                              self.view.frame.size.width,
                              300);
    FSCalendar *calendar = [[FSCalendar alloc] initWithFrame:frame];

    //For change to Persian calendar
    //calendar.identifier = NSCalendarIdentifierPersian;
    //calendar.locale = [NSLocale localeWithLocaleIdentifier:@"fa-IR"];
    
    //Change to Arabic calendar
    //calendar.identifier = NSCalendarIdentifierIslamicCivil;
    //calendar.locale = [NSLocale localeWithLocaleIdentifier:@"ar"];
    
    calendar.dataSource = self;
    calendar.delegate = self;
    calendar.backgroundColor = [UIColor whiteColor];
    
    self.fsCalendar = calendar;
    [self.view addSubview:calendar];
    self.view.backgroundColor = [UIColor whiteColor];
}
```

</details>
