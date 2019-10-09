.class public final Lcom/android/server/am/CompatModePackages;
.super Ljava/lang/Object;
.source "CompatModePackages.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/CompatModePackages$CompatHandler;
    }
.end annotation


# static fields
.field public static final COMPAT_FLAG_DONT_ASK:I = 0x1

.field public static final COMPAT_FLAG_ENABLED:I = 0x2

.field private static final MSG_WRITE:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_CONFIGURATION:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private final mFile:Landroid/util/AtomicFile;

.field private final mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

.field private final mPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/File;Landroid/os/Handler;)V
    .registers 16
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "systemDir"    # Ljava/io/File;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    .line 84
    iput-object p1, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 85
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "packages-compat.xml"

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "compat-mode"

    invoke-direct {v0, v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    .line 86
    new-instance v0, Lcom/android/server/am/CompatModePackages$CompatHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/CompatModePackages$CompatHandler;-><init>(Lcom/android/server/am/CompatModePackages;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    .line 88
    const/4 v0, 0x0

    move-object v1, v0

    .line 90
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_2a
    iget-object v2, p0, Lcom/android/server/am/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    move-object v1, v2

    .line 91
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 92
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 93
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 94
    .local v3, "eventType":I
    :goto_42
    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v3, v5, :cond_4e

    if-eq v3, v4, :cond_4e

    .line 96
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4
    :try_end_4c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2a .. :try_end_4c} :catch_c3
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_4c} :catch_b3
    .catchall {:try_start_2a .. :try_end_4c} :catchall_b1

    move v3, v4

    goto :goto_42

    .line 98
    :cond_4e
    if-ne v3, v4, :cond_58

    .line 133
    if-eqz v1, :cond_57

    .line 135
    :try_start_52
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    .line 137
    goto :goto_57

    .line 136
    :catch_56
    move-exception v0

    .line 99
    :cond_57
    :goto_57
    return-void

    .line 102
    :cond_58
    :try_start_58
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 103
    .local v6, "tagName":Ljava/lang/String;
    const-string v7, "compat-packages"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a9

    .line 104
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    move v3, v7

    .line 106
    :cond_69
    if-ne v3, v5, :cond_a2

    .line 107
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 108
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-ne v7, v5, :cond_a2

    .line 109
    const-string/jumbo v7, "pkg"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a2

    .line 110
    const-string/jumbo v7, "name"

    invoke-interface {v2, v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 111
    .local v7, "pkg":Ljava/lang/String;
    if-eqz v7, :cond_a2

    .line 112
    const-string/jumbo v8, "mode"

    invoke-interface {v2, v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_8f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_58 .. :try_end_8f} :catch_c3
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_8f} :catch_b3
    .catchall {:try_start_58 .. :try_end_8f} :catchall_b1

    .line 113
    .local v8, "mode":Ljava/lang/String;
    const/4 v9, 0x0

    .line 114
    .local v9, "modeInt":I
    if-eqz v8, :cond_99

    .line 116
    :try_start_92
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10
    :try_end_96
    .catch Ljava/lang/NumberFormatException; {:try_start_92 .. :try_end_96} :catch_98
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_92 .. :try_end_96} :catch_c3
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_96} :catch_b3
    .catchall {:try_start_92 .. :try_end_96} :catchall_b1

    move v9, v10

    .line 118
    goto :goto_99

    .line 117
    :catch_98
    move-exception v10

    .line 120
    :cond_99
    :goto_99
    :try_start_99
    iget-object v10, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .end local v7    # "pkg":Ljava/lang/String;
    .end local v8    # "mode":Ljava/lang/String;
    .end local v9    # "modeInt":I
    :cond_a2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7
    :try_end_a6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_99 .. :try_end_a6} :catch_c3
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_a6} :catch_b3
    .catchall {:try_start_99 .. :try_end_a6} :catchall_b1

    move v3, v7

    .line 126
    if-ne v3, v4, :cond_69

    .line 133
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "eventType":I
    .end local v6    # "tagName":Ljava/lang/String;
    :cond_a9
    if-eqz v1, :cond_d1

    .line 135
    :try_start_ab
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_af

    .line 137
    :goto_ae
    goto :goto_d1

    .line 136
    :catch_af
    move-exception v0

    goto :goto_ae

    .line 133
    :catchall_b1
    move-exception v0

    goto :goto_d2

    .line 130
    :catch_b3
    move-exception v0

    .line 131
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_bd

    :try_start_b6
    const-string v2, "ActivityManager"

    const-string v3, "Error reading compat-packages"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_bd
    .catchall {:try_start_b6 .. :try_end_bd} :catchall_b1

    .line 133
    .end local v0    # "e":Ljava/io/IOException;
    :cond_bd
    if-eqz v1, :cond_d1

    .line 135
    :try_start_bf
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c2} :catch_af

    goto :goto_ae

    .line 128
    :catch_c3
    move-exception v0

    .line 129
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_c4
    const-string v2, "ActivityManager"

    const-string v3, "Error reading compat-packages"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cb
    .catchall {:try_start_c4 .. :try_end_cb} :catchall_b1

    .line 133
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v1, :cond_d1

    .line 135
    :try_start_cd
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_d0} :catch_af

    goto :goto_ae

    .line 140
    :cond_d1
    :goto_d1
    return-void

    .line 133
    :goto_d2
    if-eqz v1, :cond_d9

    .line 135
    :try_start_d4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_d7} :catch_d8

    .line 137
    goto :goto_d9

    .line 136
    :catch_d8
    move-exception v2

    .line 137
    :cond_d9
    :goto_d9
    throw v0
.end method

.method private getPackageFlags(Ljava/lang/String;)I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 148
    .local v0, "flags":Ljava/lang/Integer;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method private removePackage(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 164
    iget-object v0, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-direct {p0}, Lcom/android/server/am/CompatModePackages;->scheduleWrite()V

    .line 167
    :cond_10
    return-void
.end method

.method private scheduleWrite()V
    .registers 5

    .line 193
    iget-object v0, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/android/server/am/CompatModePackages$CompatHandler;->removeMessages(I)V

    .line 194
    iget-object v0, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/CompatModePackages$CompatHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 195
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/CompatModePackages$CompatHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 196
    return-void
.end method

.method private setPackageFlagLocked(Ljava/lang/String;IZ)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flag"    # I
    .param p3, "set"    # Z

    .line 246
    invoke-direct {p0, p1}, Lcom/android/server/am/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v0

    .line 247
    .local v0, "curFlags":I
    if-eqz p3, :cond_9

    not-int v1, p2

    and-int/2addr v1, v0

    goto :goto_b

    :cond_9
    or-int v1, v0, p2

    .line 248
    .local v1, "newFlags":I
    :goto_b
    if-eq v0, v1, :cond_21

    .line 249
    if-eqz v1, :cond_19

    .line 250
    iget-object v2, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    .line 252
    :cond_19
    iget-object v2, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :goto_1e
    invoke-direct {p0}, Lcom/android/server/am/CompatModePackages;->scheduleWrite()V

    .line 256
    :cond_21
    return-void
.end method

.method private setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V
    .registers 14
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "mode"    # I

    .line 301
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 303
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/am/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v1

    .line 306
    .local v1, "curFlags":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_de

    .line 317
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown screen compat mode req #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return-void

    .line 314
    :pswitch_27
    and-int/lit8 v4, v1, 0x2

    if-nez v4, :cond_2d

    move v4, v2

    goto :goto_2e

    :cond_2d
    move v4, v3

    .line 315
    .local v4, "enable":Z
    :goto_2e
    goto :goto_33

    .line 311
    .end local v4    # "enable":Z
    :pswitch_2f
    const/4 v4, 0x1

    .line 312
    .restart local v4    # "enable":Z
    goto :goto_33

    .line 308
    .end local v4    # "enable":Z
    :pswitch_31
    const/4 v4, 0x0

    .line 309
    .restart local v4    # "enable":Z
    nop

    .line 318
    :goto_33
    nop

    .line 321
    move v5, v1

    .line 322
    .local v5, "newFlags":I
    if-eqz v4, :cond_3a

    .line 323
    or-int/lit8 v5, v5, 0x2

    goto :goto_3c

    .line 325
    :cond_3a
    and-int/lit8 v5, v5, -0x3

    .line 328
    :goto_3c
    invoke-virtual {p0, p1}, Lcom/android/server/am/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v6

    .line 329
    .local v6, "ci":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v6}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v7

    if-eqz v7, :cond_62

    .line 330
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring compat mode change of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "; compatibility never needed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/4 v5, 0x0

    .line 334
    :cond_62
    invoke-virtual {v6}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v7

    if-eqz v7, :cond_84

    .line 335
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring compat mode change of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "; compatibility always needed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const/4 v5, 0x0

    .line 340
    :cond_84
    if-eq v5, v1, :cond_dd

    .line 341
    if-eqz v5, :cond_92

    .line 342
    iget-object v7, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_97

    .line 344
    :cond_92
    iget-object v7, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    :goto_97
    invoke-virtual {p0, p1}, Lcom/android/server/am/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v6

    .line 350
    invoke-direct {p0}, Lcom/android/server/am/CompatModePackages;->scheduleWrite()V

    .line 352
    iget-object v7, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v7

    .line 353
    .local v7, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityStack;->restartPackage(Ljava/lang/String;)Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    .line 356
    .local v8, "starting":Lcom/android/server/am/ActivityRecord;
    iget-object v9, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v2

    .local v9, "i":I
    :goto_b1
    move v2, v9

    .end local v9    # "i":I
    .local v2, "i":I
    if-ltz v2, :cond_d5

    .line 357
    iget-object v9, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ProcessRecord;

    .line 358
    .local v9, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v10, v9, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v10, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c7

    .line 359
    goto :goto_d2

    .line 362
    :cond_c7
    :try_start_c7
    iget-object v10, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v10, :cond_d0

    .line 365
    iget-object v10, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v10, v0, v6}, Landroid/app/IApplicationThread;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_d0} :catch_d1

    .line 368
    :cond_d0
    goto :goto_d2

    .line 367
    :catch_d1
    move-exception v10

    .line 356
    .end local v9    # "app":Lcom/android/server/am/ProcessRecord;
    :goto_d2
    add-int/lit8 v9, v2, -0x1

    .end local v2    # "i":I
    .local v9, "i":I
    goto :goto_b1

    .line 371
    .end local v9    # "i":I
    :cond_d5
    if-eqz v8, :cond_dd

    .line 372
    invoke-virtual {v8, v3, v3}, Lcom/android/server/am/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    .line 376
    invoke-virtual {v7, v8, v3, v3}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 379
    .end local v7    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v8    # "starting":Lcom/android/server/am/ActivityRecord;
    :cond_dd
    return-void

    :pswitch_data_de
    .packed-switch 0x0
        :pswitch_31
        :pswitch_2f
        :pswitch_27
    .end packed-switch
.end method


# virtual methods
.method public compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;
    .registers 7
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 199
    iget-object v0, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 200
    .local v0, "globalConfig":Landroid/content/res/Configuration;
    new-instance v1, Landroid/content/res/CompatibilityInfo;

    iget v2, v0, Landroid/content/res/Configuration;->screenLayout:I

    iget v3, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 202
    invoke-direct {p0, v4}, Lcom/android/server/am/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_18

    const/4 v4, 0x1

    goto :goto_19

    :cond_18
    const/4 v4, 0x0

    :goto_19
    invoke-direct {v1, p1, v2, v3, v4}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZ)V

    .line 204
    .local v1, "ci":Landroid/content/res/CompatibilityInfo;
    return-object v1
.end method

.method public computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I
    .registers 9
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 208
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/am/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v1

    .line 209
    .local v0, "enabled":Z
    :goto_f
    iget-object v3, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 210
    .local v3, "globalConfig":Landroid/content/res/Configuration;
    new-instance v4, Landroid/content/res/CompatibilityInfo;

    iget v5, v3, Landroid/content/res/Configuration;->screenLayout:I

    iget v6, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-direct {v4, p1, v5, v6, v0}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZ)V

    .line 212
    .local v4, "info":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v4}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 213
    const/4 v1, -0x2

    return v1

    .line 215
    :cond_26
    invoke-virtual {v4}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 216
    const/4 v1, -0x1

    return v1

    .line 218
    :cond_2e
    if-eqz v0, :cond_32

    move v1, v2

    goto :goto_33

    .line 219
    :cond_32
    nop

    .line 218
    :goto_33
    return v1
.end method

.method public getFrontActivityAskCompatModeLocked()Z
    .registers 3

    .line 223
    iget-object v0, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 224
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_e

    .line 225
    const/4 v1, 0x0

    return v1

    .line 227
    :cond_e
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/am/CompatModePackages;->getPackageAskCompatModeLocked(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public getFrontActivityScreenCompatModeLocked()I
    .registers 3

    .line 259
    iget-object v0, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 260
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_e

    .line 261
    const/4 v1, -0x3

    return v1

    .line 263
    :cond_e
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v1}, Lcom/android/server/am/CompatModePackages;->computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I

    move-result v1

    return v1
.end method

.method public getPackageAskCompatModeLocked(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 231
    invoke-direct {p0, p1}, Lcom/android/server/am/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public getPackageScreenCompatModeLocked(Ljava/lang/String;)I
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 276
    const/4 v0, 0x0

    .line 278
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-object v0, v1

    .line 280
    goto :goto_d

    .line 279
    :catch_c
    move-exception v1

    .line 281
    :goto_d
    if-nez v0, :cond_11

    .line 282
    const/4 v1, -0x3

    return v1

    .line 284
    :cond_11
    invoke-virtual {p0, v0}, Lcom/android/server/am/CompatModePackages;->computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I

    move-result v1

    return v1
.end method

.method public getPackages()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    return-object v0
.end method

.method public handlePackageAddedLocked(Ljava/lang/String;Z)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "updated"    # Z

    .line 170
    const/4 v0, 0x0

    .line 172
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x0

    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-interface {v2, p1, v1, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_a} :catch_c

    move-object v0, v2

    .line 174
    goto :goto_d

    .line 173
    :catch_c
    move-exception v2

    .line 175
    :goto_d
    if-nez v0, :cond_10

    .line 176
    return-void

    .line 178
    :cond_10
    invoke-virtual {p0, v0}, Lcom/android/server/am/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    .line 179
    .local v2, "ci":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v2}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v3

    if-nez v3, :cond_22

    .line 180
    invoke-virtual {v2}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v3

    if-nez v3, :cond_22

    const/4 v1, 0x1

    nop

    .line 182
    .local v1, "mayCompat":Z
    :cond_22
    if-eqz p2, :cond_36

    .line 185
    if-nez v1, :cond_36

    iget-object v3, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 186
    iget-object v3, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-direct {p0}, Lcom/android/server/am/CompatModePackages;->scheduleWrite()V

    .line 190
    :cond_36
    return-void
.end method

.method public handlePackageDataClearedLocked(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 153
    invoke-direct {p0, p1}, Lcom/android/server/am/CompatModePackages;->removePackage(Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public handlePackageUninstalledLocked(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 159
    invoke-direct {p0, p1}, Lcom/android/server/am/CompatModePackages;->removePackage(Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method saveCompatModes()V
    .registers 18

    .line 383
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 384
    new-instance v0, Ljava/util/HashMap;

    iget-object v3, v1, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object v3, v0

    .line 385
    .local v3, "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_eb

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 387
    const/4 v2, 0x0

    move-object v4, v2

    .line 390
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_16
    iget-object v0, v1, Lcom/android/server/am/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    move-object v4, v0

    .line 391
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    move-object v5, v0

    .line 392
    .local v5, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 393
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 394
    const-string v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v5, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 395
    const-string v0, "compat-packages"

    invoke-interface {v5, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 397
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    move-object v6, v0

    .line 398
    .local v6, "pm":Landroid/content/pm/IPackageManager;
    iget-object v0, v1, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    move-object v7, v0

    .line 399
    .local v7, "globalConfig":Landroid/content/res/Configuration;
    iget v0, v7, Landroid/content/res/Configuration;->screenLayout:I

    move v8, v0

    .line 400
    .local v8, "screenLayout":I
    iget v0, v7, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move v9, v0

    .line 401
    .local v9, "smallestScreenWidthDp":I
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 401
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :goto_58
    move-object v10, v0

    .line 402
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .local v10, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 403
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v11, v0

    .line 404
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    .line 405
    .local v12, "pkg":Ljava/lang/String;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_77} :catch_d9

    move v13, v0

    .line 406
    .local v13, "mode":I
    if-nez v13, :cond_7e

    .line 407
    nop

    .line 401
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v12    # "pkg":Ljava/lang/String;
    .end local v13    # "mode":I
    :goto_7b
    move-object/from16 v16, v3

    goto :goto_c1

    .line 409
    .restart local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v12    # "pkg":Ljava/lang/String;
    .restart local v13    # "mode":I
    :cond_7e
    move-object v14, v2

    .line 411
    .local v14, "ai":Landroid/content/pm/ApplicationInfo;
    const/4 v15, 0x0

    :try_start_80
    invoke-interface {v6, v12, v15, v15}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_84
    .catch Landroid/os/RemoteException; {:try_start_80 .. :try_end_84} :catch_8a
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_84} :catch_86

    move-object v14, v0

    .line 413
    goto :goto_8b

    .line 435
    .end local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v6    # "pm":Landroid/content/pm/IPackageManager;
    .end local v7    # "globalConfig":Landroid/content/res/Configuration;
    .end local v8    # "screenLayout":I
    .end local v9    # "smallestScreenWidthDp":I
    .end local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v12    # "pkg":Ljava/lang/String;
    .end local v13    # "mode":I
    .end local v14    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_86
    move-exception v0

    move-object/from16 v16, v3

    goto :goto_dc

    .line 412
    .restart local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v6    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v7    # "globalConfig":Landroid/content/res/Configuration;
    .restart local v8    # "screenLayout":I
    .restart local v9    # "smallestScreenWidthDp":I
    .restart local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .restart local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v12    # "pkg":Ljava/lang/String;
    .restart local v13    # "mode":I
    .restart local v14    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_8a
    move-exception v0

    .line 414
    :goto_8b
    if-nez v14, :cond_8e

    .line 415
    goto :goto_7b

    .line 417
    :cond_8e
    :try_start_8e
    new-instance v0, Landroid/content/res/CompatibilityInfo;

    invoke-direct {v0, v14, v8, v9, v15}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZ)V

    .line 419
    .local v0, "info":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v15

    if-eqz v15, :cond_9a

    .line 420
    goto :goto_7b

    .line 422
    :cond_9a
    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v15

    if-eqz v15, :cond_a1

    .line 423
    goto :goto_7b

    .line 425
    :cond_a1
    const-string/jumbo v15, "pkg"

    invoke-interface {v5, v2, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 426
    const-string/jumbo v15, "name"

    invoke-interface {v5, v2, v15, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 427
    const-string/jumbo v15, "mode"

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_b4} :catch_d9

    move-object/from16 v16, v3

    const/4 v3, 0x0

    :try_start_b7
    invoke-interface {v5, v3, v15, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 428
    .end local v3    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v16, "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string/jumbo v2, "pkg"

    invoke-interface {v5, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 429
    .end local v0    # "info":Landroid/content/res/CompatibilityInfo;
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v12    # "pkg":Ljava/lang/String;
    .end local v13    # "mode":I
    .end local v14    # "ai":Landroid/content/pm/ApplicationInfo;
    nop

    .line 401
    .end local v16    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v3    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_c1
    move-object v0, v10

    move-object/from16 v3, v16

    const/4 v2, 0x0

    .line 401
    .end local v3    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v16    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_58

    .line 431
    .end local v16    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v3    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_c6
    move-object/from16 v16, v3

    .line 431
    .end local v3    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v16    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v0, "compat-packages"

    const/4 v2, 0x0

    invoke-interface {v5, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 432
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 434
    iget-object v0, v1, Lcom/android/server/am/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_d6} :catch_d7

    .line 440
    .end local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v6    # "pm":Landroid/content/pm/IPackageManager;
    .end local v7    # "globalConfig":Landroid/content/res/Configuration;
    .end local v8    # "screenLayout":I
    .end local v9    # "smallestScreenWidthDp":I
    .end local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    goto :goto_ea

    .line 435
    :catch_d7
    move-exception v0

    goto :goto_dc

    .line 435
    .end local v16    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v3    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catch_d9
    move-exception v0

    move-object/from16 v16, v3

    .line 436
    .end local v3    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v0, "e1":Ljava/io/IOException;
    .restart local v16    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_dc
    const-string v2, "ActivityManager"

    const-string v3, "Error writing compat packages"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 437
    if-eqz v4, :cond_ea

    .line 438
    iget-object v2, v1, Lcom/android/server/am/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 441
    .end local v0    # "e1":Ljava/io/IOException;
    :cond_ea
    :goto_ea
    return-void

    .line 385
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v16    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_eb
    move-exception v0

    :try_start_ec
    monitor-exit v2
    :try_end_ed
    .catchall {:try_start_ec .. :try_end_ed} :catchall_eb

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public setFrontActivityAskCompatModeLocked(Z)V
    .registers 4
    .param p1, "ask"    # Z

    .line 235
    iget-object v0, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 236
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_11

    .line 237
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/CompatModePackages;->setPackageAskCompatModeLocked(Ljava/lang/String;Z)V

    .line 239
    :cond_11
    return-void
.end method

.method public setFrontActivityScreenCompatModeLocked(I)V
    .registers 5
    .param p1, "mode"    # I

    .line 267
    iget-object v0, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 268
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_15

    .line 269
    const-string v1, "ActivityManager"

    const-string/jumbo v2, "setFrontActivityScreenCompatMode failed: no top activity"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return-void

    .line 272
    :cond_15
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v1, p1}, Lcom/android/server/am/CompatModePackages;->setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V

    .line 273
    return-void
.end method

.method public setPackageAskCompatModeLocked(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ask"    # Z

    .line 242
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/am/CompatModePackages;->setPackageFlagLocked(Ljava/lang/String;IZ)V

    .line 243
    return-void
.end method

.method public setPackageScreenCompatModeLocked(Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 288
    const/4 v0, 0x0

    .line 290
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-object v0, v1

    .line 292
    goto :goto_d

    .line 291
    :catch_c
    move-exception v1

    .line 293
    :goto_d
    if-nez v0, :cond_27

    .line 294
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPackageScreenCompatMode failed: unknown package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return-void

    .line 297
    :cond_27
    invoke-direct {p0, v0, p2}, Lcom/android/server/am/CompatModePackages;->setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V

    .line 298
    return-void
.end method
