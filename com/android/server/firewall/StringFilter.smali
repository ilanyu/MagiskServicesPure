.class abstract Lcom/android/server/firewall/StringFilter;
.super Ljava/lang/Object;
.source "StringFilter.java"

# interfaces
.implements Lcom/android/server/firewall/Filter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/firewall/StringFilter$IsNullFilter;,
        Lcom/android/server/firewall/StringFilter$RegexFilter;,
        Lcom/android/server/firewall/StringFilter$PatternStringFilter;,
        Lcom/android/server/firewall/StringFilter$StartsWithFilter;,
        Lcom/android/server/firewall/StringFilter$ContainsFilter;,
        Lcom/android/server/firewall/StringFilter$EqualsFilter;,
        Lcom/android/server/firewall/StringFilter$ValueProvider;
    }
.end annotation


# static fields
.field public static final ACTION:Lcom/android/server/firewall/FilterFactory;

.field private static final ATTR_CONTAINS:Ljava/lang/String; = "contains"

.field private static final ATTR_EQUALS:Ljava/lang/String; = "equals"

.field private static final ATTR_IS_NULL:Ljava/lang/String; = "isNull"

.field private static final ATTR_PATTERN:Ljava/lang/String; = "pattern"

.field private static final ATTR_REGEX:Ljava/lang/String; = "regex"

.field private static final ATTR_STARTS_WITH:Ljava/lang/String; = "startsWith"

.field public static final COMPONENT:Lcom/android/server/firewall/StringFilter$ValueProvider;

.field public static final COMPONENT_NAME:Lcom/android/server/firewall/StringFilter$ValueProvider;

.field public static final COMPONENT_PACKAGE:Lcom/android/server/firewall/StringFilter$ValueProvider;

.field public static final DATA:Lcom/android/server/firewall/StringFilter$ValueProvider;

.field public static final HOST:Lcom/android/server/firewall/StringFilter$ValueProvider;

.field public static final MIME_TYPE:Lcom/android/server/firewall/StringFilter$ValueProvider;

.field public static final PATH:Lcom/android/server/firewall/StringFilter$ValueProvider;

.field public static final SCHEME:Lcom/android/server/firewall/StringFilter$ValueProvider;

.field public static final SSP:Lcom/android/server/firewall/StringFilter$ValueProvider;


# instance fields
.field private final mValueProvider:Lcom/android/server/firewall/StringFilter$ValueProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 230
    new-instance v0, Lcom/android/server/firewall/StringFilter$1;

    const-string v1, "component"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/StringFilter$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/StringFilter;->COMPONENT:Lcom/android/server/firewall/StringFilter$ValueProvider;

    .line 241
    new-instance v0, Lcom/android/server/firewall/StringFilter$2;

    const-string v1, "component-name"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/StringFilter$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/StringFilter;->COMPONENT_NAME:Lcom/android/server/firewall/StringFilter$ValueProvider;

    .line 252
    new-instance v0, Lcom/android/server/firewall/StringFilter$3;

    const-string v1, "component-package"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/StringFilter$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/StringFilter;->COMPONENT_PACKAGE:Lcom/android/server/firewall/StringFilter$ValueProvider;

    .line 263
    new-instance v0, Lcom/android/server/firewall/StringFilter$4;

    const-string v1, "action"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/StringFilter$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/StringFilter;->ACTION:Lcom/android/server/firewall/FilterFactory;

    .line 271
    new-instance v0, Lcom/android/server/firewall/StringFilter$5;

    const-string v1, "data"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/StringFilter$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/StringFilter;->DATA:Lcom/android/server/firewall/StringFilter$ValueProvider;

    .line 283
    new-instance v0, Lcom/android/server/firewall/StringFilter$6;

    const-string/jumbo v1, "mime-type"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/StringFilter$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/StringFilter;->MIME_TYPE:Lcom/android/server/firewall/StringFilter$ValueProvider;

    .line 291
    new-instance v0, Lcom/android/server/firewall/StringFilter$7;

    const-string/jumbo v1, "scheme"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/StringFilter$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/StringFilter;->SCHEME:Lcom/android/server/firewall/StringFilter$ValueProvider;

    .line 303
    new-instance v0, Lcom/android/server/firewall/StringFilter$8;

    const-string/jumbo v1, "scheme-specific-part"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/StringFilter$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/StringFilter;->SSP:Lcom/android/server/firewall/StringFilter$ValueProvider;

    .line 315
    new-instance v0, Lcom/android/server/firewall/StringFilter$9;

    const-string v1, "host"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/StringFilter$9;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/StringFilter;->HOST:Lcom/android/server/firewall/StringFilter$ValueProvider;

    .line 327
    new-instance v0, Lcom/android/server/firewall/StringFilter$10;

    const-string/jumbo v1, "path"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/StringFilter$10;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/StringFilter;->PATH:Lcom/android/server/firewall/StringFilter$ValueProvider;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/firewall/StringFilter$ValueProvider;)V
    .registers 2
    .param p1, "valueProvider"    # Lcom/android/server/firewall/StringFilter$ValueProvider;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/server/firewall/StringFilter;->mValueProvider:Lcom/android/server/firewall/StringFilter$ValueProvider;

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Lcom/android/server/firewall/StringFilter$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/firewall/StringFilter$ValueProvider;
    .param p2, "x1"    # Lcom/android/server/firewall/StringFilter$1;

    .line 29
    invoke-direct {p0, p1}, Lcom/android/server/firewall/StringFilter;-><init>(Lcom/android/server/firewall/StringFilter$ValueProvider;)V

    return-void
.end method

.method private static getFilter(Lcom/android/server/firewall/StringFilter$ValueProvider;Lorg/xmlpull/v1/XmlPullParser;I)Lcom/android/server/firewall/StringFilter;
    .registers 7
    .param p0, "valueProvider"    # Lcom/android/server/firewall/StringFilter$ValueProvider;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attributeIndex"    # I

    .line 79
    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "attributeName":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x63

    const/4 v3, 0x0

    if-eq v1, v2, :cond_81

    const/16 v2, 0x65

    if-eq v1, v2, :cond_6e

    const/16 v2, 0x69

    if-eq v1, v2, :cond_5a

    const/16 v2, 0x70

    if-eq v1, v2, :cond_46

    packed-switch v1, :pswitch_data_94

    .line 115
    return-object v3

    .line 93
    :pswitch_1e
    const-string/jumbo v1, "startsWith"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 94
    return-object v3

    .line 96
    :cond_28
    new-instance v1, Lcom/android/server/firewall/StringFilter$StartsWithFilter;

    .line 97
    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/firewall/StringFilter$StartsWithFilter;-><init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Ljava/lang/String;)V

    .line 96
    return-object v1

    .line 110
    :pswitch_32
    const-string/jumbo v1, "regex"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 111
    return-object v3

    .line 113
    :cond_3c
    new-instance v1, Lcom/android/server/firewall/StringFilter$RegexFilter;

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/firewall/StringFilter$RegexFilter;-><init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Ljava/lang/String;)V

    return-object v1

    .line 104
    :cond_46
    const-string/jumbo v1, "pattern"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    .line 105
    return-object v3

    .line 107
    :cond_50
    new-instance v1, Lcom/android/server/firewall/StringFilter$PatternStringFilter;

    .line 108
    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/firewall/StringFilter$PatternStringFilter;-><init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Ljava/lang/String;)V

    .line 107
    return-object v1

    .line 88
    :cond_5a
    const-string/jumbo v1, "isNull"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    .line 89
    return-object v3

    .line 91
    :cond_64
    new-instance v1, Lcom/android/server/firewall/StringFilter$IsNullFilter;

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/firewall/StringFilter$IsNullFilter;-><init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Ljava/lang/String;)V

    return-object v1

    .line 83
    :cond_6e
    const-string v1, "equals"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_77

    .line 84
    return-object v3

    .line 86
    :cond_77
    new-instance v1, Lcom/android/server/firewall/StringFilter$EqualsFilter;

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/firewall/StringFilter$EqualsFilter;-><init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Ljava/lang/String;)V

    return-object v1

    .line 99
    :cond_81
    const-string v1, "contains"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8a

    .line 100
    return-object v3

    .line 102
    :cond_8a
    new-instance v1, Lcom/android/server/firewall/StringFilter$ContainsFilter;

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/firewall/StringFilter$ContainsFilter;-><init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Ljava/lang/String;)V

    return-object v1

    :pswitch_data_94
    .packed-switch 0x72
        :pswitch_32
        :pswitch_1e
    .end packed-switch
.end method

.method public static readFromXml(Lcom/android/server/firewall/StringFilter$ValueProvider;Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/StringFilter;
    .registers 7
    .param p0, "valueProvider"    # Lcom/android/server/firewall/StringFilter$ValueProvider;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 56
    const/4 v0, 0x0

    .line 58
    .local v0, "filter":Lcom/android/server/firewall/StringFilter;
    const/4 v1, 0x0

    move-object v2, v0

    move v0, v1

    .local v0, "i":I
    .local v2, "filter":Lcom/android/server/firewall/StringFilter;
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    if-ge v0, v3, :cond_1f

    .line 59
    invoke-static {p0, p1, v0}, Lcom/android/server/firewall/StringFilter;->getFilter(Lcom/android/server/firewall/StringFilter$ValueProvider;Lorg/xmlpull/v1/XmlPullParser;I)Lcom/android/server/firewall/StringFilter;

    move-result-object v3

    .line 60
    .local v3, "newFilter":Lcom/android/server/firewall/StringFilter;
    if-eqz v3, :cond_1c

    .line 61
    if-nez v2, :cond_14

    .line 64
    move-object v2, v3

    .end local v3    # "newFilter":Lcom/android/server/firewall/StringFilter;
    goto :goto_1c

    .line 62
    .restart local v3    # "newFilter":Lcom/android/server/firewall/StringFilter;
    :cond_14
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Multiple string filter attributes found"

    invoke-direct {v1, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    .end local v3    # "newFilter":Lcom/android/server/firewall/StringFilter;
    :cond_1c
    :goto_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 68
    .end local v0    # "i":I
    :cond_1f
    if-nez v2, :cond_27

    .line 71
    new-instance v0, Lcom/android/server/firewall/StringFilter$IsNullFilter;

    invoke-direct {v0, p0, v1}, Lcom/android/server/firewall/StringFilter$IsNullFilter;-><init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Z)V

    move-object v2, v0

    .line 74
    :cond_27
    return-object v2
.end method


# virtual methods
.method public matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z
    .registers 10
    .param p1, "ifw"    # Lcom/android/server/firewall/IntentFirewall;
    .param p2, "resolvedComponent"    # Landroid/content/ComponentName;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "callerUid"    # I
    .param p5, "callerPid"    # I
    .param p6, "resolvedType"    # Ljava/lang/String;
    .param p7, "receivingUid"    # I

    .line 123
    iget-object v0, p0, Lcom/android/server/firewall/StringFilter;->mValueProvider:Lcom/android/server/firewall/StringFilter$ValueProvider;

    invoke-virtual {v0, p2, p3, p6}, Lcom/android/server/firewall/StringFilter$ValueProvider;->getValue(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/firewall/StringFilter;->matchesValue(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method protected abstract matchesValue(Ljava/lang/String;)Z
.end method
