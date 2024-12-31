#if swift(>=5.8)

@_documentation(visibility: internal) @_exported import LZFoundation
@_documentation(visibility: internal) @_exported import LZUIKit
@_documentation(visibility: internal) @_exported import RxSwift
@_documentation(visibility: internal) @_exported import RxCocoa

#else

@_exported import LZFoundation
@_exported import LZUIKit
@_exported import RxSwift
@_exported import RxCocoa

#endif
