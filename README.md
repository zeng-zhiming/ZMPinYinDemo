# ZMPinYinDemo

中文转拼音Demo,可以将中文转换为带声调的拼音，不带声调的拼音，中文拼音的首字母。

详细说明请移步博客：http://blog.csdn.net/zeng_zhiming/article/details/68927728

==========================================================================

```Objective-C

/**
 将中文字符串转换为拼音格式（带声调）
 
 @return 返回带声调拼音字符串
 */
- (NSString *)transformToPinyinTone;


/**
 将中文字符串转换为拼音格式（不带声调）
 
 @return 返回不带声调拼音字符串
 */
- (NSString *)transformToPinyin;


/**
 将中字符串转换为拼音首字母
 
 @return 拼音首字母字符串
 */
- (NSString *)transformToFirstLetter;

```

