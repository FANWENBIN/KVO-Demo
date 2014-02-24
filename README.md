#KVO-Demo

addObserve

```objective-c
[self addObserver:self forKeyPath:@"items" options:0 context:nil];
```
keyValueChanged
```objective-c
[self willChangeValueForKey:@"items"];
[self didChangeValueForKey:@"items"];
```
listen for changes to the items delegate
```objective-c
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context 
```