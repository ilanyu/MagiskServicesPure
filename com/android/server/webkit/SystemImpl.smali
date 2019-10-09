.class public Lcom/android/server/webkit/SystemImpl;
.super Ljava/lang/Object;
.source "SystemImpl.java"

# interfaces
.implements Lcom/android/server/webkit/SystemInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/webkit/SystemImpl$LazyHolder;
    }
.end annotation


# static fields
.field private static final PACKAGE_FLAGS:I = 0x104004c0

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_AVAILABILITY:Ljava/lang/String; = "availableByDefault"

.field private static final TAG_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final TAG_FALLBACK:Ljava/lang/String; = "isFallback"

.field private static final TAG_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final TAG_SIGNATURE:Ljava/lang/String; = "signature"

.field private static final TAG_START:Ljava/lang/String; = "webviewproviders"

.field private static final TAG_WEBVIEW_PROVIDER:Ljava/lang/String; = "webviewprovider"


# instance fields
.field private final mWebViewProviderPackages:[Landroid/webkit/WebViewProviderInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 56
    const-class v0, Lcom/android/server/webkit/SystemImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/webkit/SystemImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 16

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "numFallbackPackages":I
    const/4 v1, 0x0

    .line 80
    .local v1, "numAvailableByDefaultPackages":I
    const/4 v2, 0x0

    .line 81
    .local v2, "numAvByDefaultAndNotFallback":I
    const/4 v3, 0x0

    .line 82
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v4, "webViewProviders":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/WebViewProviderInfo;>;"
    :try_start_c
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1170006

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    move-object v3, v5

    .line 86
    const-string/jumbo v5, "webviewproviders"

    invoke-static {v3, v5}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 88
    :goto_22
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 89
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5
    :try_end_29
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_29} :catch_e1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_29} :catch_e1
    .catchall {:try_start_c .. :try_end_29} :catchall_df

    .line 90
    .local v5, "element":Ljava/lang/String;
    if-nez v5, :cond_55

    .line 91
    nop

    .line 137
    .end local v5    # "element":Ljava/lang/String;
    if-eqz v3, :cond_31

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 139
    :cond_31
    if-eqz v1, :cond_4d

    .line 143
    if-eqz v2, :cond_45

    .line 147
    nop

    .line 148
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/webkit/WebViewProviderInfo;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/webkit/WebViewProviderInfo;

    iput-object v5, p0, Lcom/android/server/webkit/SystemImpl;->mWebViewProviderPackages:[Landroid/webkit/WebViewProviderInfo;

    .line 149
    return-void

    .line 144
    :cond_45
    new-instance v5, Landroid/util/AndroidRuntimeException;

    const-string v6, "There must be at least one WebView package that is available by default and not a fallback"

    invoke-direct {v5, v6}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 140
    :cond_4d
    new-instance v5, Landroid/util/AndroidRuntimeException;

    const-string v6, "There must be at least one WebView package that is available by default"

    invoke-direct {v5, v6}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 93
    .restart local v5    # "element":Ljava/lang/String;
    :cond_55
    :try_start_55
    const-string/jumbo v6, "webviewprovider"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d6

    .line 94
    const-string/jumbo v6, "packageName"

    const/4 v7, 0x0

    invoke-interface {v3, v7, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 95
    .local v6, "packageName":Ljava/lang/String;
    if-eqz v6, :cond_ce

    .line 99
    const-string v8, "description"

    invoke-interface {v3, v7, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v14, v8

    .line 100
    .local v14, "description":Ljava/lang/String;
    if-eqz v14, :cond_c6

    .line 104
    const-string/jumbo v8, "true"

    const-string v9, "availableByDefault"

    .line 105
    invoke-interface {v3, v7, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 104
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 106
    .local v11, "availableByDefault":Z
    const-string/jumbo v8, "true"

    const-string/jumbo v9, "isFallback"

    .line 107
    invoke-interface {v3, v7, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 106
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 108
    .local v12, "isFallback":Z
    new-instance v7, Landroid/webkit/WebViewProviderInfo;

    .line 110
    invoke-static {v3}, Lcom/android/server/webkit/SystemImpl;->readSignatures(Landroid/content/res/XmlResourceParser;)[Ljava/lang/String;

    move-result-object v13

    move-object v8, v7

    move-object v9, v6

    move-object v10, v14

    invoke-direct/range {v8 .. v13}, Landroid/webkit/WebViewProviderInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;)V

    .line 111
    .local v7, "currentProvider":Landroid/webkit/WebViewProviderInfo;
    iget-boolean v8, v7, Landroid/webkit/WebViewProviderInfo;->isFallback:Z

    if-eqz v8, :cond_b6

    .line 112
    add-int/lit8 v0, v0, 0x1

    .line 113
    iget-boolean v8, v7, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-eqz v8, :cond_ae

    .line 117
    const/4 v8, 0x1

    if-gt v0, v8, :cond_a6

    goto :goto_b6

    .line 118
    :cond_a6
    new-instance v8, Landroid/util/AndroidRuntimeException;

    const-string v9, "There can be at most one WebView fallback package."

    invoke-direct {v8, v9}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 114
    :cond_ae
    new-instance v8, Landroid/util/AndroidRuntimeException;

    const-string v9, "Each WebView fallback package must be available by default."

    invoke-direct {v8, v9}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 122
    :cond_b6
    :goto_b6
    iget-boolean v8, v7, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-eqz v8, :cond_c2

    .line 123
    add-int/lit8 v1, v1, 0x1

    .line 124
    iget-boolean v8, v7, Landroid/webkit/WebViewProviderInfo;->isFallback:Z

    if-nez v8, :cond_c2

    .line 125
    add-int/lit8 v2, v2, 0x1

    .line 128
    :cond_c2
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "currentProvider":Landroid/webkit/WebViewProviderInfo;
    .end local v11    # "availableByDefault":Z
    .end local v12    # "isFallback":Z
    .end local v14    # "description":Ljava/lang/String;
    goto :goto_dd

    .line 101
    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v14    # "description":Ljava/lang/String;
    :cond_c6
    new-instance v7, Landroid/util/AndroidRuntimeException;

    const-string v8, "WebView provider in framework resources missing description"

    invoke-direct {v7, v8}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 96
    .end local v14    # "description":Ljava/lang/String;
    :cond_ce
    new-instance v7, Landroid/util/AndroidRuntimeException;

    const-string v8, "WebView provider in framework resources missing package name"

    invoke-direct {v7, v8}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 131
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_d6
    sget-object v6, Lcom/android/server/webkit/SystemImpl;->TAG:Ljava/lang/String;

    const-string v7, "Found an element that is not a WebView provider"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_dd
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_55 .. :try_end_dd} :catch_e1
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_dd} :catch_e1
    .catchall {:try_start_55 .. :try_end_dd} :catchall_df

    .line 133
    .end local v5    # "element":Ljava/lang/String;
    :goto_dd
    goto/16 :goto_22

    .line 137
    :catchall_df
    move-exception v5

    goto :goto_f9

    .line 134
    :catch_e1
    move-exception v5

    .line 135
    .local v5, "e":Ljava/lang/Exception;
    :try_start_e2
    new-instance v6, Landroid/util/AndroidRuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error when parsing WebView config "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_f9
    .catchall {:try_start_e2 .. :try_end_f9} :catchall_df

    .line 137
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_f9
    if-eqz v3, :cond_fe

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_fe
    throw v5
.end method

.method synthetic constructor <init>(Lcom/android/server/webkit/SystemImpl$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/webkit/SystemImpl$1;

    .line 55
    invoke-direct {p0}, Lcom/android/server/webkit/SystemImpl;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/webkit/SystemImpl;
    .registers 1

    .line 74
    # getter for: Lcom/android/server/webkit/SystemImpl$LazyHolder;->INSTANCE:Lcom/android/server/webkit/SystemImpl;
    invoke-static {}, Lcom/android/server/webkit/SystemImpl$LazyHolder;->access$100()Lcom/android/server/webkit/SystemImpl;

    move-result-object v0

    return-object v0
.end method

.method private static readSignatures(Landroid/content/res/XmlResourceParser;)[Ljava/lang/String;
    .registers 5
    .param p0, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v0, "signatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 172
    .local v1, "outerDepth":I
    :goto_9
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 173
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "signature"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 175
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "signature":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    .end local v2    # "signature":Ljava/lang/String;
    goto :goto_9

    .line 178
    :cond_24
    sget-object v2, Lcom/android/server/webkit/SystemImpl;->TAG:Ljava/lang/String;

    const-string v3, "Found an element in a webview provider that is not a signature"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 181
    :cond_2c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method


# virtual methods
.method public enableFallbackLogic(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 220
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "webview_fallback_logic_enabled"

    .line 221
    nop

    .line 220
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 222
    return-void
.end method

.method public enablePackageForAllUsers(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .line 243
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 244
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 245
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p2, p3, v3}, Lcom/android/server/webkit/SystemImpl;->enablePackageForUser(Ljava/lang/String;ZI)V

    .line 246
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    goto :goto_11

    .line 247
    :cond_23
    return-void
.end method

.method public enablePackageForUser(Ljava/lang/String;ZI)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "userId"    # I

    .line 252
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 254
    if-eqz p2, :cond_9

    const/4 v1, 0x0

    .line 255
    :goto_7
    move v2, v1

    goto :goto_b

    :cond_9
    const/4 v1, 0x3

    goto :goto_7

    :goto_b
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 252
    move-object v1, p1

    move v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_12} :catch_13

    .line 260
    goto :goto_44

    .line 257
    :catch_13
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/webkit/SystemImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_25

    const-string v3, "enable "

    goto :goto_27

    :cond_25
    const-string v3, "disable "

    :goto_27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_44
    return-void
.end method

.method public getFactoryPackageVersion(Ljava/lang/String;)J
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 160
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 161
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/high16 v1, 0x200000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 162
    invoke-virtual {v1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v1

    .line 161
    return-wide v1
.end method

.method public getMultiProcessSetting(Landroid/content/Context;)I
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 283
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "webview_multiprocess"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPackageInfoForProvider(Landroid/webkit/WebViewProviderInfo;)Landroid/content/pm/PackageInfo;
    .registers 5
    .param p1, "configInfo"    # Landroid/webkit/WebViewProviderInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 271
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 272
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v1, p1, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    const v2, 0x104004c0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    return-object v1
.end method

.method public getPackageInfoForProviderAllUsers(Landroid/content/Context;Landroid/webkit/WebViewProviderInfo;)Ljava/util/List;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configInfo"    # Landroid/webkit/WebViewProviderInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/webkit/WebViewProviderInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/webkit/UserPackage;",
            ">;"
        }
    .end annotation

    .line 278
    iget-object v0, p2, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    const v1, 0x104004c0

    invoke-static {p1, v0, v1}, Landroid/webkit/UserPackage;->getPackageInfosAllUsers(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserChosenWebViewProvider(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 191
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "webview_provider"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .registers 2

    .line 156
    iget-object v0, p0, Lcom/android/server/webkit/SystemImpl;->mWebViewProviderPackages:[Landroid/webkit/WebViewProviderInfo;

    return-object v0
.end method

.method public isFallbackLogicEnabled()Z
    .registers 4

    .line 214
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "webview_fallback_logic_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_13

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    return v2
.end method

.method public isMultiProcessDefaultEnabled()Z
    .registers 2

    .line 303
    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v0, v0

    if-gtz v0, :cond_e

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x1

    :goto_f
    return v0
.end method

.method public killPackageDependents(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 205
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, p1, v1}, Landroid/app/IActivityManager;->killPackageDependents(Ljava/lang/String;I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    .line 208
    goto :goto_a

    .line 207
    :catch_9
    move-exception v0

    .line 209
    :goto_a
    return-void
.end method

.method public notifyZygote(Z)V
    .registers 2
    .param p1, "enableMultiProcess"    # Z

    .line 295
    invoke-static {p1}, Landroid/webkit/WebViewZygote;->setMultiprocessEnabled(Z)V

    .line 296
    return-void
.end method

.method public onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)I
    .registers 3
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 186
    invoke-static {p1}, Landroid/webkit/WebViewFactory;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)I

    move-result v0

    return v0
.end method

.method public setMultiProcessSetting(Landroid/content/Context;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "value"    # I

    .line 289
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "webview_multiprocess"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 291
    return-void
.end method

.method public systemIsDebuggable()Z
    .registers 2

    .line 265
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    return v0
.end method

.method public uninstallAndDisablePackageForAllUsers(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 226
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/webkit/SystemImpl;->enablePackageForAllUsers(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 228
    :try_start_4
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 229
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 230
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 231
    new-instance v2, Lcom/android/server/webkit/SystemImpl$1;

    invoke-direct {v2, p0, p1}, Lcom/android/server/webkit/SystemImpl$1;-><init>(Lcom/android/server/webkit/SystemImpl;Landroid/content/Context;)V

    const/4 v3, 0x6

    invoke-virtual {v1, p2, v2, v3}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_21} :catch_22

    .line 238
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_21
    goto :goto_23

    .line 237
    :catch_22
    move-exception v0

    .line 239
    :goto_23
    return-void
.end method

.method public updateUserSetting(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "newProviderName"    # Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "webview_provider"

    .line 199
    if-nez p2, :cond_c

    const-string v2, ""

    goto :goto_d

    .line 197
    :cond_c
    move-object v2, p2

    :goto_d
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 200
    return-void
.end method
