.class public Lcom/android/server/pm/ShortcutParser;
.super Ljava/lang/Object;
.source "ShortcutParser.java"


# static fields
.field private static final DEBUG:Z = false

.field static final METADATA_KEY:Ljava/lang/String; = "android.app.shortcuts"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ShortcutService"

.field private static final TAG_CATEGORIES:Ljava/lang/String; = "categories"

.field private static final TAG_INTENT:Ljava/lang/String; = "intent"

.field private static final TAG_SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final TAG_SHORTCUTS:Ljava/lang/String; = "shortcuts"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createShortcutFromManifest(Lcom/android/server/pm/ShortcutService;ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;IIIIIZ)Landroid/content/pm/ShortcutInfo;
    .registers 40
    .param p0, "service"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "userId"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityComponent"    # Landroid/content/ComponentName;
    .param p5, "titleResId"    # I
    .param p6, "textResId"    # I
    .param p7, "disabledMessageResId"    # I
    .param p8, "rank"    # I
    .param p9, "iconResId"    # I
    .param p10, "enabled"    # Z

    .line 337
    if-eqz p10, :cond_5

    const/16 v0, 0x20

    goto :goto_7

    :cond_5
    const/16 v0, 0x40

    :goto_7
    or-int/lit16 v0, v0, 0x100

    .line 339
    const/4 v1, 0x0

    if-eqz p9, :cond_e

    const/4 v2, 0x4

    goto :goto_f

    :cond_e
    move v2, v1

    :goto_f
    or-int/2addr v0, v2

    .line 341
    .local v0, "flags":I
    if-eqz p10, :cond_15

    .line 342
    :goto_12
    move/from16 v27, v1

    goto :goto_17

    :cond_15
    const/4 v1, 0x1

    goto :goto_12

    .line 346
    .local v27, "disabledReason":I
    :goto_17
    new-instance v1, Landroid/content/pm/ShortcutInfo;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    .line 365
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v21

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object v2, v1

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v9, p5

    move/from16 v12, p6

    move/from16 v15, p7

    move/from16 v19, p8

    move/from16 v23, v0

    move/from16 v24, p9

    invoke-direct/range {v2 .. v27}, Landroid/content/pm/ShortcutInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/util/Set;[Landroid/content/Intent;ILandroid/os/PersistableBundle;JIILjava/lang/String;Ljava/lang/String;I)V

    .line 346
    return-object v1
.end method

.method private static parseCategories(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Ljava/lang/String;
    .registers 6
    .param p0, "service"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 273
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->ShortcutCategories:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 276
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_d
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1c

    .line 277
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_28

    .line 283
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 277
    return-object v1

    .line 279
    :cond_1c
    :try_start_1c
    const-string v1, "ShortcutService"

    const-string v2, "android:name for shortcut category must be string literal."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_28

    .line 280
    const/4 v1, 0x0

    .line 283
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 280
    return-object v1

    .line 283
    :catchall_28
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static parseShortcutAttributes(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/ComponentName;II)Landroid/content/pm/ShortcutInfo;
    .registers 23
    .param p0, "service"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activity"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I
    .param p5, "rank"    # I

    move-object/from16 v12, p3

    .line 290
    move-object/from16 v13, p0

    iget-object v0, v13, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->Shortcut:[I

    move-object/from16 v14, p1

    invoke-virtual {v0, v14, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    move-object v15, v0

    .line 293
    .local v15, "sa":Landroid/content/res/TypedArray;
    const/4 v0, 0x2

    :try_start_14
    invoke-virtual {v15, v0}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v1, v2, :cond_37

    .line 294
    const-string v0, "ShortcutService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android:shortcutId must be string literal. activity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_14 .. :try_end_32} :catchall_a6

    .line 295
    nop

    .line 327
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 295
    return-object v3

    .line 297
    :cond_37
    :try_start_37
    invoke-virtual {v15, v0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "id":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-virtual {v15, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 299
    .local v11, "enabled":Z
    const/4 v1, 0x0

    invoke-virtual {v15, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 300
    .local v10, "iconResId":I
    invoke-virtual {v15, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    move/from16 v16, v2

    .line 301
    .local v16, "titleResId":I
    const/4 v2, 0x4

    invoke-virtual {v15, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 302
    .local v7, "textResId":I
    const/4 v2, 0x5

    invoke-virtual {v15, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 305
    .local v8, "disabledMessageResId":I
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 306
    const-string v1, "ShortcutService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android:shortcutId must be provided. activity="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catchall {:try_start_37 .. :try_end_71} :catchall_a6

    .line 307
    nop

    .line 327
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 307
    return-object v3

    .line 309
    :cond_76
    if-nez v16, :cond_93

    .line 310
    :try_start_78
    const-string v1, "ShortcutService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android:shortcutShortLabel must be provided. activity="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catchall {:try_start_78 .. :try_end_8e} :catchall_a6

    .line 311
    nop

    .line 327
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 311
    return-object v3

    .line 314
    :cond_93
    move-object v1, v13

    move/from16 v2, p4

    move-object v3, v0

    move-object/from16 v4, p2

    move-object v5, v12

    move/from16 v6, v16

    move/from16 v9, p5

    :try_start_9e
    invoke-static/range {v1 .. v11}, Lcom/android/server/pm/ShortcutParser;->createShortcutFromManifest(Lcom/android/server/pm/ShortcutService;ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;IIIIIZ)Landroid/content/pm/ShortcutInfo;

    move-result-object v1
    :try_end_a2
    .catchall {:try_start_9e .. :try_end_a2} :catchall_a6

    .line 327
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 314
    return-object v1

    .line 327
    .end local v0    # "id":Ljava/lang/String;
    .end local v7    # "textResId":I
    .end local v8    # "disabledMessageResId":I
    .end local v10    # "iconResId":I
    .end local v11    # "enabled":Z
    .end local v16    # "titleResId":I
    :catchall_a6
    move-exception v0

    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public static parseShortcuts(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)Ljava/util/List;
    .registers 11
    .param p0, "service"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/ShortcutService;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectGetMainActivities(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 67
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_4c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_e

    goto :goto_4c

    .line 71
    :cond_e
    move-object v2, v1

    .line 74
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :try_start_f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 75
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_14
    if-ge v4, v3, :cond_34

    .line 76
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 77
    .local v5, "activityInfoNoMetadata":Landroid/content/pm/ActivityInfo;
    if-nez v5, :cond_21

    .line 78
    goto :goto_31

    .line 81
    :cond_21
    nop

    .line 83
    invoke-virtual {v5}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    .line 82
    invoke-virtual {p0, v6, p2}, Lcom/android/server/pm/ShortcutService;->getActivityInfoWithMetadata(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 84
    .local v6, "activityInfoWithMetadata":Landroid/content/pm/ActivityInfo;
    if-eqz v6, :cond_31

    .line 85
    invoke-static {p0, v6, p1, p2, v2}, Lcom/android/server/pm/ShortcutParser;->parseShortcutsOneFile(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILjava/util/List;)Ljava/util/List;

    move-result-object v7
    :try_end_30
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_30} :catch_36

    move-object v2, v7

    .line 75
    .end local v5    # "activityInfoNoMetadata":Landroid/content/pm/ActivityInfo;
    .end local v6    # "activityInfoWithMetadata":Landroid/content/pm/ActivityInfo;
    :cond_31
    :goto_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 95
    .end local v3    # "size":I
    .end local v4    # "i":I
    :cond_34
    nop

    .line 96
    return-object v2

    .line 89
    :catch_36
    move-exception v3

    .line 92
    .local v3, "e":Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception caught while parsing shortcut XML for package="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    return-object v1

    .line 68
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :cond_4c
    :goto_4c
    return-object v1
.end method

.method private static parseShortcutsOneFile(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILjava/util/List;)Ljava/util/List;
    .registers 27
    .param p0, "service"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/ShortcutService;",
            "Landroid/content/pm/ActivityInfo;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 108
    .local p4, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 108
    const/4 v0, 0x0

    move-object v1, v0

    .line 110
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_6
    const-string v0, "android.app.shortcuts"

    invoke-virtual {v7, v8, v0}, Lcom/android/server/pm/ShortcutService;->injectXmlMetaData(Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_2b1

    move-object v9, v0

    .line 111
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .local v9, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v9, :cond_16

    .line 112
    nop

    .line 265
    if-eqz v9, :cond_15

    .line 266
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    .line 112
    :cond_15
    return-object p4

    .line 115
    :cond_16
    :try_start_16
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v10, p2

    invoke-direct {v0, v10, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, v0

    .line 117
    .local v11, "activity":Landroid/content/ComponentName;
    invoke-static {v9}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    move-object v12, v0

    .line 121
    .local v12, "attrs":Landroid/util/AttributeSet;
    const/4 v0, 0x0

    .line 122
    .local v0, "rank":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->getMaxActivityShortcuts()I

    move-result v1

    move v13, v1

    .line 123
    .local v13, "maxShortcuts":I
    const/4 v1, 0x0

    .line 127
    .local v1, "numShortcuts":I
    const/4 v3, 0x0

    .line 129
    .local v3, "currentShortcut":Landroid/content/pm/ShortcutInfo;
    const/4 v4, 0x0

    .line 130
    .local v4, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_33
    .catchall {:try_start_16 .. :try_end_33} :catchall_2ad

    move v15, v0

    move v6, v1

    move-object v0, v3

    move-object v14, v4

    move-object/from16 v4, p4

    .line 133
    .end local v1    # "numShortcuts":I
    .end local v3    # "currentShortcut":Landroid/content/pm/ShortcutInfo;
    .end local p4    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .local v0, "currentShortcut":Landroid/content/pm/ShortcutInfo;
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .local v5, "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .local v6, "numShortcuts":I
    .local v14, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v15, "rank":I
    :goto_39
    :try_start_39
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_2aa

    move v3, v1

    .line 133
    .local v3, "type":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_2a3

    const/4 v1, 0x3

    if-ne v3, v1, :cond_52

    .line 134
    :try_start_44
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v16
    :try_end_48
    .catchall {:try_start_44 .. :try_end_48} :catchall_4e

    if-lez v16, :cond_4b

    goto :goto_52

    .line 265
    .end local v0    # "currentShortcut":Landroid/content/pm/ShortcutInfo;
    .end local v3    # "type":I
    .end local v5    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .end local v6    # "numShortcuts":I
    .end local v11    # "activity":Landroid/content/ComponentName;
    .end local v12    # "attrs":Landroid/util/AttributeSet;
    .end local v13    # "maxShortcuts":I
    .end local v14    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15    # "rank":I
    :cond_4b
    move-object v12, v4

    goto/16 :goto_2a4

    :catchall_4e
    move-exception v0

    move-object v12, v4

    goto/16 :goto_2b5

    .line 135
    .restart local v0    # "currentShortcut":Landroid/content/pm/ShortcutInfo;
    .restart local v3    # "type":I
    .restart local v5    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .restart local v6    # "numShortcuts":I
    .restart local v11    # "activity":Landroid/content/ComponentName;
    .restart local v12    # "attrs":Landroid/util/AttributeSet;
    .restart local v13    # "maxShortcuts":I
    .restart local v14    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v15    # "rank":I
    :cond_52
    :goto_52
    :try_start_52
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v16

    move/from16 v17, v16

    .line 136
    .local v17, "depth":I
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v16
    :try_end_5c
    .catchall {:try_start_52 .. :try_end_5c} :catchall_2aa

    move-object/from16 v18, v16

    .line 139
    .local v18, "tag":Ljava/lang/String;
    const/4 v2, 0x2

    if-ne v3, v1, :cond_144

    move-object/from16 v19, v11

    move/from16 v11, v17

    if-ne v11, v2, :cond_13f

    .line 139
    .end local v17    # "depth":I
    .local v11, "depth":I
    .local v19, "activity":Landroid/content/ComponentName;
    :try_start_67
    const-string/jumbo v1, "shortcut"

    move-object/from16 v2, v18

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 139
    .end local v18    # "tag":Ljava/lang/String;
    .local v2, "tag":Ljava/lang/String;
    if-eqz v1, :cond_13c

    .line 140
    if-nez v0, :cond_7e

    .line 142
    nop

    .line 130
    move-object v8, v5

    move/from16 v17, v6

    move-object v2, v12

    move-object/from16 v5, v19

    move-object v12, v4

    goto/16 :goto_297

    .line 144
    :cond_7e
    move-object v1, v0

    .line 145
    .local v1, "si":Landroid/content/pm/ShortcutInfo;
    const/16 v16, 0x0

    .line 147
    .end local v0    # "currentShortcut":Landroid/content/pm/ShortcutInfo;
    .local v16, "currentShortcut":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 148
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_b0

    .line 149
    const-string v0, "ShortcutService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v12

    const-string v12, "Shortcut "

    .line 149
    .end local v12    # "attrs":Landroid/util/AttributeSet;
    .local v20, "attrs":Landroid/util/AttributeSet;
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " has no intent. Skipping it."

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    goto/16 :goto_132

    .line 158
    .end local v20    # "attrs":Landroid/util/AttributeSet;
    .restart local v12    # "attrs":Landroid/util/AttributeSet;
    :cond_b0
    move-object/from16 v20, v12

    .line 158
    .end local v12    # "attrs":Landroid/util/AttributeSet;
    .restart local v20    # "attrs":Landroid/util/AttributeSet;
    goto :goto_c2

    .line 154
    .end local v20    # "attrs":Landroid/util/AttributeSet;
    .restart local v12    # "attrs":Landroid/util/AttributeSet;
    :cond_b3
    move-object/from16 v20, v12

    .line 154
    .end local v12    # "attrs":Landroid/util/AttributeSet;
    .restart local v20    # "attrs":Landroid/util/AttributeSet;
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 155
    new-instance v0, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    :goto_c2
    if-lt v6, v13, :cond_f2

    .line 159
    const-string v0, "ShortcutService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "More than "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " shortcuts found for "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ". Skipping the rest."

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 159
    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_eb
    .catchall {:try_start_67 .. :try_end_eb} :catchall_4e

    .line 161
    nop

    .line 265
    if-eqz v9, :cond_f1

    .line 266
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    .line 161
    :cond_f1
    return-object v4

    .line 165
    :cond_f2
    const/4 v0, 0x0

    :try_start_f3
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const v10, 0x1000c000

    invoke-virtual {v0, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_ff
    .catchall {:try_start_f3 .. :try_end_ff} :catchall_4e

    .line 170
    :try_start_ff
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/Intent;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/pm/ShortcutInfo;->setIntents([Landroid/content/Intent;)V
    :try_end_10e
    .catch Ljava/lang/RuntimeException; {:try_start_ff .. :try_end_10e} :catch_129
    .catchall {:try_start_ff .. :try_end_10e} :catchall_4e

    .line 177
    nop

    .line 178
    :try_start_10f
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 180
    if-eqz v14, :cond_119

    .line 181
    invoke-virtual {v1, v14}, Landroid/content/pm/ShortcutInfo;->setCategories(Ljava/util/Set;)V

    .line 182
    const/4 v0, 0x0

    .line 185
    .end local v14    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v0, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v14, v0

    .line 185
    .end local v0    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v14    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_119
    if-nez v4, :cond_121

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .end local v4    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    move-object v4, v0

    .line 188
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v4    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :cond_121
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    add-int/lit8 v6, v6, 0x1

    .line 190
    add-int/lit8 v15, v15, 0x1

    .line 194
    goto :goto_132

    .line 171
    :catch_129
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v10, "ShortcutService"

    const-string v12, "Shortcut\'s extras contain un-persistable values. Skipping it."

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    nop

    .line 130
    .end local v1    # "si":Landroid/content/pm/ShortcutInfo;
    .end local v2    # "tag":Ljava/lang/String;
    .end local v3    # "type":I
    .end local v16    # "currentShortcut":Landroid/content/pm/ShortcutInfo;
    .end local v19    # "activity":Landroid/content/ComponentName;
    .end local v20    # "attrs":Landroid/util/AttributeSet;
    .local v0, "currentShortcut":Landroid/content/pm/ShortcutInfo;
    .local v11, "activity":Landroid/content/ComponentName;
    .restart local v12    # "attrs":Landroid/util/AttributeSet;
    :goto_132
    move-object/from16 v0, v16

    move-object/from16 v11, v19

    move-object/from16 v12, v20

    move-object/from16 v10, p2

    goto/16 :goto_39

    .line 198
    .restart local v2    # "tag":Ljava/lang/String;
    .restart local v3    # "type":I
    .local v11, "depth":I
    .restart local v19    # "activity":Landroid/content/ComponentName;
    :cond_13c
    move-object/from16 v20, v12

    .line 198
    .end local v12    # "attrs":Landroid/util/AttributeSet;
    .restart local v20    # "attrs":Landroid/util/AttributeSet;
    goto :goto_14c

    .line 198
    .end local v2    # "tag":Ljava/lang/String;
    .end local v20    # "attrs":Landroid/util/AttributeSet;
    .restart local v12    # "attrs":Landroid/util/AttributeSet;
    .restart local v18    # "tag":Ljava/lang/String;
    :cond_13f
    move-object/from16 v20, v12

    move-object/from16 v2, v18

    .line 198
    .end local v12    # "attrs":Landroid/util/AttributeSet;
    .end local v18    # "tag":Ljava/lang/String;
    .restart local v2    # "tag":Ljava/lang/String;
    .restart local v20    # "attrs":Landroid/util/AttributeSet;
    goto :goto_14c

    .line 198
    .end local v2    # "tag":Ljava/lang/String;
    .end local v19    # "activity":Landroid/content/ComponentName;
    .end local v20    # "attrs":Landroid/util/AttributeSet;
    .local v11, "activity":Landroid/content/ComponentName;
    .restart local v12    # "attrs":Landroid/util/AttributeSet;
    .restart local v17    # "depth":I
    .restart local v18    # "tag":Ljava/lang/String;
    :cond_144
    move-object/from16 v19, v11

    move-object/from16 v20, v12

    move/from16 v11, v17

    move-object/from16 v2, v18

    .line 198
    .end local v12    # "attrs":Landroid/util/AttributeSet;
    .end local v17    # "depth":I
    .end local v18    # "tag":Ljava/lang/String;
    .restart local v2    # "tag":Ljava/lang/String;
    .local v11, "depth":I
    .restart local v19    # "activity":Landroid/content/ComponentName;
    .restart local v20    # "attrs":Landroid/util/AttributeSet;
    :goto_14c
    const/4 v1, 0x2

    if-eq v3, v1, :cond_15a

    .line 199
    nop

    .line 130
    .end local v2    # "tag":Ljava/lang/String;
    .end local v3    # "type":I
    .end local v11    # "depth":I
    :goto_150
    move-object v12, v4

    move-object v8, v5

    move/from16 v17, v6

    :goto_154
    move-object/from16 v5, v19

    move-object/from16 v2, v20

    goto/16 :goto_297

    .line 202
    .restart local v2    # "tag":Ljava/lang/String;
    .restart local v3    # "type":I
    .restart local v11    # "depth":I
    :cond_15a
    const/4 v10, 0x1

    if-ne v11, v10, :cond_167

    const-string/jumbo v1, "shortcuts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_164
    .catchall {:try_start_10f .. :try_end_164} :catchall_4e

    if-eqz v1, :cond_167

    .line 203
    goto :goto_150

    .line 205
    :cond_167
    const/4 v1, 0x2

    if-ne v11, v1, :cond_1c6

    :try_start_16a
    const-string/jumbo v1, "shortcut"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_171
    .catchall {:try_start_16a .. :try_end_171} :catchall_2aa

    if-eqz v1, :cond_1c6

    .line 206
    move-object v1, v7

    move v12, v10

    move-object v10, v2

    move-object/from16 v2, v20

    .line 206
    .end local v2    # "tag":Ljava/lang/String;
    .local v10, "tag":Ljava/lang/String;
    move/from16 v16, v3

    move-object/from16 v3, p2

    .line 206
    .end local v3    # "type":I
    .local v16, "type":I
    move-object v12, v4

    move-object/from16 v4, v19

    .line 206
    .end local v4    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .local v12, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    move-object v8, v5

    move/from16 v5, p3

    .line 206
    .end local v5    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .local v8, "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    move/from16 v17, v6

    move v6, v15

    .line 206
    .end local v6    # "numShortcuts":I
    .local v17, "numShortcuts":I
    :try_start_185
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/ShortcutParser;->parseShortcutAttributes(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/ComponentName;II)Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    .line 208
    .restart local v1    # "si":Landroid/content/pm/ShortcutInfo;
    if-nez v1, :cond_18c

    .line 210
    goto :goto_154

    .line 215
    :cond_18c
    if-eqz v12, :cond_1b5

    .line 216
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 216
    .local v2, "i":I
    :goto_194
    if-ltz v2, :cond_1b5

    .line 217
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b2

    .line 218
    const-string v3, "ShortcutService"

    const-string v4, "Duplicate shortcut ID detected. Skipping it."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    goto :goto_154

    .line 216
    :cond_1b2
    add-int/lit8 v2, v2, -0x1

    goto :goto_194

    .line 223
    .end local v2    # "i":I
    :cond_1b5
    move-object v0, v1

    .line 224
    const/4 v14, 0x0

    .line 225
    nop

    .line 130
    move-object/from16 v10, p2

    move-object v5, v8

    move-object v4, v12

    move/from16 v6, v17

    move-object/from16 v11, v19

    move-object/from16 v12, v20

    move-object/from16 v8, p1

    goto/16 :goto_39

    .line 227
    .end local v1    # "si":Landroid/content/pm/ShortcutInfo;
    .end local v8    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .end local v10    # "tag":Ljava/lang/String;
    .end local v12    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .end local v16    # "type":I
    .end local v17    # "numShortcuts":I
    .local v2, "tag":Ljava/lang/String;
    .restart local v3    # "type":I
    .restart local v4    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v5    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .restart local v6    # "numShortcuts":I
    :cond_1c6
    move-object v10, v2

    move/from16 v16, v3

    move-object v12, v4

    move-object v8, v5

    move/from16 v17, v6

    .line 227
    .end local v2    # "tag":Ljava/lang/String;
    .end local v3    # "type":I
    .end local v4    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .end local v5    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .end local v6    # "numShortcuts":I
    .restart local v8    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .restart local v10    # "tag":Ljava/lang/String;
    .restart local v12    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v16    # "type":I
    .restart local v17    # "numShortcuts":I
    const/4 v1, 0x3

    if-ne v11, v1, :cond_22c

    const-string v1, "intent"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22c

    .line 228
    if-eqz v0, :cond_21c

    .line 229
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1e5

    .line 230
    move-object/from16 v5, v19

    move-object/from16 v2, v20

    goto :goto_220

    .line 234
    :cond_1e5
    iget-object v1, v7, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object/from16 v2, v20

    invoke-static {v1, v9, v2}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v1

    .line 236
    .end local v20    # "attrs":Landroid/util/AttributeSet;
    .local v1, "intent":Landroid/content/Intent;
    .local v2, "attrs":Landroid/util/AttributeSet;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_215

    .line 237
    const-string v3, "ShortcutService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Shortcut intent action must be provided. activity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v19

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .end local v19    # "activity":Landroid/content/ComponentName;
    .local v5, "activity":Landroid/content/ComponentName;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v0, 0x0

    .line 239
    goto :goto_271

    .line 241
    .end local v5    # "activity":Landroid/content/ComponentName;
    .restart local v19    # "activity":Landroid/content/ComponentName;
    :cond_215
    move-object/from16 v5, v19

    .line 241
    .end local v19    # "activity":Landroid/content/ComponentName;
    .restart local v5    # "activity":Landroid/content/ComponentName;
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    goto/16 :goto_297

    .line 230
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "activity":Landroid/content/ComponentName;
    .restart local v19    # "activity":Landroid/content/ComponentName;
    .restart local v20    # "attrs":Landroid/util/AttributeSet;
    :cond_21c
    move-object/from16 v5, v19

    move-object/from16 v2, v20

    .line 230
    .end local v19    # "activity":Landroid/content/ComponentName;
    .end local v20    # "attrs":Landroid/util/AttributeSet;
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local v5    # "activity":Landroid/content/ComponentName;
    :goto_220
    const-string v1, "ShortcutService"

    const-string v3, "Ignoring excessive intent tag."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    goto/16 :goto_297

    .line 265
    .end local v0    # "currentShortcut":Landroid/content/pm/ShortcutInfo;
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "activity":Landroid/content/ComponentName;
    .end local v8    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .end local v10    # "tag":Ljava/lang/String;
    .end local v11    # "depth":I
    .end local v13    # "maxShortcuts":I
    .end local v14    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15    # "rank":I
    .end local v16    # "type":I
    .end local v17    # "numShortcuts":I
    :catchall_229
    move-exception v0

    goto/16 :goto_2b5

    .line 244
    .restart local v0    # "currentShortcut":Landroid/content/pm/ShortcutInfo;
    .restart local v8    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .restart local v10    # "tag":Ljava/lang/String;
    .restart local v11    # "depth":I
    .restart local v13    # "maxShortcuts":I
    .restart local v14    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v15    # "rank":I
    .restart local v16    # "type":I
    .restart local v17    # "numShortcuts":I
    .restart local v19    # "activity":Landroid/content/ComponentName;
    .restart local v20    # "attrs":Landroid/util/AttributeSet;
    :cond_22c
    move-object/from16 v5, v19

    move-object/from16 v2, v20

    .line 244
    .end local v19    # "activity":Landroid/content/ComponentName;
    .end local v20    # "attrs":Landroid/util/AttributeSet;
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local v5    # "activity":Landroid/content/ComponentName;
    const/4 v1, 0x3

    if-ne v11, v1, :cond_27d

    const-string v1, "categories"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27d

    .line 245
    if-eqz v0, :cond_297

    .line 246
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getCategories()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_244

    .line 247
    goto :goto_297

    .line 249
    :cond_244
    invoke-static {v7, v2}, Lcom/android/server/pm/ShortcutParser;->parseCategories(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_265

    .line 251
    const-string v3, "ShortcutService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Empty category found. activity="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    goto :goto_297

    .line 255
    :cond_265
    if-nez v14, :cond_26d

    .line 256
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 258
    .end local v14    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v3, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v14, v3

    .line 258
    .end local v3    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v14    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_26d
    invoke-interface {v14, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 259
    nop

    .line 130
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v8    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .end local v10    # "tag":Ljava/lang/String;
    .end local v16    # "type":I
    .end local v17    # "numShortcuts":I
    .restart local v4    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .local v5, "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .restart local v6    # "numShortcuts":I
    .local v11, "activity":Landroid/content/ComponentName;
    .local v12, "attrs":Landroid/util/AttributeSet;
    :goto_271
    move-object/from16 v10, p2

    move-object v11, v5

    move-object v5, v8

    move-object v4, v12

    move/from16 v6, v17

    move-object/from16 v8, p1

    move-object v12, v2

    goto/16 :goto_39

    .line 262
    .end local v4    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .end local v6    # "numShortcuts":I
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .local v5, "activity":Landroid/content/ComponentName;
    .restart local v8    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .restart local v10    # "tag":Ljava/lang/String;
    .local v11, "depth":I
    .local v12, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v16    # "type":I
    .restart local v17    # "numShortcuts":I
    :cond_27d
    const-string v1, "ShortcutService"

    const-string v3, "Invalid tag \'%s\' found at depth %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v10, v4, v6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v18, 0x1

    aput-object v6, v4, v18

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_296
    .catchall {:try_start_185 .. :try_end_296} :catchall_229

    .line 263
    .end local v10    # "tag":Ljava/lang/String;
    .end local v11    # "depth":I
    nop

    .line 130
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v8    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .end local v12    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .end local v16    # "type":I
    .end local v17    # "numShortcuts":I
    .restart local v4    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .local v5, "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .restart local v6    # "numShortcuts":I
    .restart local v19    # "activity":Landroid/content/ComponentName;
    .restart local v20    # "attrs":Landroid/util/AttributeSet;
    :cond_297
    :goto_297
    move-object/from16 v10, p2

    move-object v11, v5

    move-object v5, v8

    move-object v4, v12

    move/from16 v6, v17

    move-object/from16 v8, p1

    move-object v12, v2

    .line 130
    .end local v4    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .end local v6    # "numShortcuts":I
    .end local v19    # "activity":Landroid/content/ComponentName;
    .end local v20    # "attrs":Landroid/util/AttributeSet;
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .local v5, "activity":Landroid/content/ComponentName;
    .restart local v8    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .restart local v12    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v17    # "numShortcuts":I
    goto/16 :goto_39

    .line 265
    .end local v0    # "currentShortcut":Landroid/content/pm/ShortcutInfo;
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "activity":Landroid/content/ComponentName;
    .end local v8    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .end local v12    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .end local v13    # "maxShortcuts":I
    .end local v14    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15    # "rank":I
    .end local v17    # "numShortcuts":I
    .restart local v4    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :cond_2a3
    move-object v12, v4

    .line 265
    .end local v4    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v12    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :goto_2a4
    if-eqz v9, :cond_2a9

    .line 266
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    .line 269
    :cond_2a9
    return-object v12

    .line 265
    .end local v12    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v4    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :catchall_2aa
    move-exception v0

    move-object v12, v4

    .line 265
    .end local v4    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v12    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    goto :goto_2b5

    .line 265
    .end local v12    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .restart local p4    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :catchall_2ad
    move-exception v0

    move-object/from16 v12, p4

    goto :goto_2b5

    .line 265
    .end local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :catchall_2b1
    move-exception v0

    move-object/from16 v12, p4

    move-object v9, v1

    .line 265
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p4    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v12    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :goto_2b5
    if-eqz v9, :cond_2ba

    .line 266
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2ba
    throw v0
.end method
