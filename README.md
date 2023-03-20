# What's happen
Addressing shadow cropping issues


## problem
Scrollview clips....

![before](https://user-images.githubusercontent.com/62822536/226300223-bac02eff-17f4-4739-b374-1416021e49f6.png) 






## Solution
Not clipped

```
import UIKit

extension UIScrollView {
  open override var clipsToBounds: Bool {
    get { false }
    set { }
  }
}

```

![after](https://user-images.githubusercontent.com/62822536/226300217-91a5c22c-1b50-4082-9449-865af8ab30ae.png)
