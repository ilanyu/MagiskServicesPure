.class Lcom/android/server/policy/ShortcutManager;
.super Ljava/lang/Object;
.source "ShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/ShortcutManager$ShortcutInfo;
    }
.end annotation


# static fields
.field private static final ATTRIBUTE_CATEGORY:Ljava/lang/String; = "category"

.field private static final ATTRIBUTE_CLASS:Ljava/lang/String; = "class"

.field private static final ATTRIBUTE_PACKAGE:Ljava/lang/String; = "package"

.field private static final ATTRIBUTE_SHIFT:Ljava/lang/String; = "shift"

.field private static final ATTRIBUTE_SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final TAG:Ljava/lang/String; = "ShortcutManager"

.field private static final TAG_BOOKMARK:Ljava/lang/String; = "bookmark"

.field private static final TAG_BOOKMARKS:Ljava/lang/String; = "bookmarks"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mShiftShortcuts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/policy/ShortcutManager$ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mShortcuts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/policy/ShortcutManager$ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ShortcutManager;->mShortcuts:Landroid/util/SparseArray;

    .line 56
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ShortcutManager;->mShiftShortcuts:Landroid/util/SparseArray;

    .line 61
    iput-object p1, p0, Lcom/android/server/policy/ShortcutManager;->mContext:Landroid/content/Context;

    .line 62
    invoke-direct {p0}, Lcom/android/server/policy/ShortcutManager;->loadShortcuts()V

    .line 63
    return-void
.end method

.method private loadShortcuts()V
    .registers 20

    .line 105
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/policy/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v2, v0

    .line 107
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_9
    iget-object v0, v1, Lcom/android/server/policy/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1170004

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    move-object v3, v0

    .line 109
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    const-string v0, "bookmarks"

    invoke-static {v3, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 112
    :goto_1c
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 114
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_28

    .line 115
    goto/16 :goto_152

    .line 118
    :cond_28
    const-string v0, "bookmark"

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 119
    goto/16 :goto_152

    .line 122
    :cond_36
    const-string/jumbo v0, "package"

    const/4 v5, 0x0

    invoke-interface {v3, v5, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 123
    .local v6, "packageName":Ljava/lang/String;
    const-string v0, "class"

    invoke-interface {v3, v5, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 124
    .local v7, "className":Ljava/lang/String;
    const-string/jumbo v0, "shortcut"

    invoke-interface {v3, v5, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 125
    .local v8, "shortcutName":Ljava/lang/String;
    const-string v0, "category"

    invoke-interface {v3, v5, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 126
    .local v9, "categoryName":Ljava/lang/String;
    const-string/jumbo v0, "shift"

    invoke-interface {v3, v5, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 128
    .local v5, "shiftName":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 129
    const-string v0, "ShortcutManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to get shortcut for: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    goto :goto_1c

    .line 133
    :cond_82
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v11, v0

    .line 134
    .local v11, "shortcutChar":I
    if-eqz v5, :cond_95

    const-string/jumbo v0, "true"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    move v0, v4

    goto :goto_96

    :cond_95
    move v0, v10

    :goto_96
    move v12, v0

    .line 138
    .local v12, "isShiftShortcut":Z
    if-eqz v6, :cond_104

    if-eqz v7, :cond_104

    .line 139
    const/4 v13, 0x0

    .line 140
    .local v13, "info":Landroid/content/pm/ActivityInfo;
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_a1} :catch_14a
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_a1} :catch_141

    move-object v14, v0

    .line 142
    .local v14, "componentName":Landroid/content/ComponentName;
    const v15, 0xc2000

    :try_start_a5
    invoke-virtual {v2, v14, v15}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_a9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a5 .. :try_end_a9} :catch_aa
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a5 .. :try_end_a9} :catch_14a
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a9} :catch_141

    .line 160
    .end local v13    # "info":Landroid/content/pm/ActivityInfo;
    .local v0, "info":Landroid/content/pm/ActivityInfo;
    goto :goto_c5

    .line 146
    .end local v0    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v13    # "info":Landroid/content/pm/ActivityInfo;
    :catch_aa
    move-exception v0

    move-object/from16 v16, v0

    move-object/from16 v17, v16

    .line 147
    .local v17, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_af
    new-array v0, v4, [Ljava/lang/String;

    aput-object v6, v0, v10

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 149
    .local v4, "packages":[Ljava/lang/String;
    new-instance v0, Landroid/content/ComponentName;

    aget-object v10, v4, v10

    invoke-direct {v0, v10, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bf
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_af .. :try_end_bf} :catch_14a
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_bf} :catch_141

    move-object v14, v0

    .line 151
    :try_start_c0
    invoke-virtual {v2, v14, v15}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_c4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c0 .. :try_end_c4} :catch_de
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c0 .. :try_end_c4} :catch_14a
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c4} :catch_141

    .line 159
    .end local v13    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v0    # "info":Landroid/content/pm/ActivityInfo;
    nop

    .line 162
    .end local v4    # "packages":[Ljava/lang/String;
    .end local v17    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_c5
    :try_start_c5
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    .local v4, "intent":Landroid/content/Intent;
    const-string v10, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    invoke-virtual {v4, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 165
    invoke-virtual {v0, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 165
    .end local v0    # "info":Landroid/content/pm/ActivityInfo;
    .end local v14    # "componentName":Landroid/content/ComponentName;
    move-object v0, v10

    .line 166
    .local v0, "title":Ljava/lang/String;
    goto :goto_10f

    .line 155
    .end local v0    # "title":Ljava/lang/String;
    .local v4, "packages":[Ljava/lang/String;
    .restart local v13    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v14    # "componentName":Landroid/content/ComponentName;
    .restart local v17    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_de
    move-exception v0

    move-object v10, v0

    .line 156
    .local v0, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "ShortcutManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v0

    const-string v0, "Unable to add bookmark: "

    .line 156
    .end local v0    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v18, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v15, v17

    invoke-static {v10, v0, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    .end local v17    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v15, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_1c

    .line 166
    .end local v4    # "packages":[Ljava/lang/String;
    .end local v13    # "info":Landroid/content/pm/ActivityInfo;
    .end local v14    # "componentName":Landroid/content/ComponentName;
    .end local v15    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v18    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_104
    if-eqz v9, :cond_124

    .line 167
    const-string v0, "android.intent.action.MAIN"

    invoke-static {v0, v9}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    move-object v4, v0

    .line 168
    .local v4, "intent":Landroid/content/Intent;
    const-string v0, ""

    .line 172
    .local v0, "title":Ljava/lang/String;
    :goto_10f
    nop

    .line 175
    new-instance v10, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;

    invoke-direct {v10, v0, v4}, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 176
    .local v10, "shortcut":Lcom/android/server/policy/ShortcutManager$ShortcutInfo;
    if-eqz v12, :cond_11d

    .line 177
    iget-object v13, v1, Lcom/android/server/policy/ShortcutManager;->mShiftShortcuts:Landroid/util/SparseArray;

    invoke-virtual {v13, v11, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_122

    .line 179
    :cond_11d
    iget-object v13, v1, Lcom/android/server/policy/ShortcutManager;->mShortcuts:Landroid/util/SparseArray;

    invoke-virtual {v13, v11, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 181
    .end local v0    # "title":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "shiftName":Ljava/lang/String;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "className":Ljava/lang/String;
    .end local v8    # "shortcutName":Ljava/lang/String;
    .end local v9    # "categoryName":Ljava/lang/String;
    .end local v10    # "shortcut":Lcom/android/server/policy/ShortcutManager$ShortcutInfo;
    .end local v11    # "shortcutChar":I
    .end local v12    # "isShiftShortcut":Z
    :goto_122
    goto/16 :goto_1c

    .line 170
    .restart local v5    # "shiftName":Ljava/lang/String;
    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v7    # "className":Ljava/lang/String;
    .restart local v8    # "shortcutName":Ljava/lang/String;
    .restart local v9    # "categoryName":Ljava/lang/String;
    .restart local v11    # "shortcutChar":I
    .restart local v12    # "isShiftShortcut":Z
    :cond_124
    const-string v0, "ShortcutManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to add bookmark for shortcut "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": missing package/class or category attributes"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c5 .. :try_end_13f} :catch_14a
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_13f} :catch_141

    .line 172
    goto/16 :goto_1c

    .line 184
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v5    # "shiftName":Ljava/lang/String;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "className":Ljava/lang/String;
    .end local v8    # "shortcutName":Ljava/lang/String;
    .end local v9    # "categoryName":Ljava/lang/String;
    .end local v11    # "shortcutChar":I
    .end local v12    # "isShiftShortcut":Z
    :catch_141
    move-exception v0

    .line 185
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "ShortcutManager"

    const-string v4, "Got exception parsing bookmarks."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_153

    .line 182
    :catch_14a
    move-exception v0

    .line 183
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "ShortcutManager"

    const-string v4, "Got exception parsing bookmarks."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_152
    nop

    .line 187
    :goto_153
    return-void
.end method


# virtual methods
.method public getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;
    .registers 9
    .param p1, "kcm"    # Landroid/view/KeyCharacterMap;
    .param p2, "keyCode"    # I
    .param p3, "metaState"    # I

    .line 81
    const/4 v0, 0x0

    .line 84
    .local v0, "shortcut":Lcom/android/server/policy/ShortcutManager$ShortcutInfo;
    and-int/lit8 v1, p3, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    goto :goto_8

    :cond_7
    const/4 v2, 0x0

    :goto_8
    move v1, v2

    .line 85
    .local v1, "isShiftOn":Z
    if-eqz v1, :cond_e

    iget-object v2, p0, Lcom/android/server/policy/ShortcutManager;->mShiftShortcuts:Landroid/util/SparseArray;

    goto :goto_10

    :cond_e
    iget-object v2, p0, Lcom/android/server/policy/ShortcutManager;->mShortcuts:Landroid/util/SparseArray;

    .line 88
    .local v2, "shortcutMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/policy/ShortcutManager$ShortcutInfo;>;"
    :goto_10
    invoke-virtual {p1, p2, p3}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v3

    .line 89
    .local v3, "shortcutChar":I
    if-eqz v3, :cond_1d

    .line 90
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;

    .line 94
    :cond_1d
    if-nez v0, :cond_30

    .line 95
    invoke-virtual {p1, p2}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    .line 96
    if-eqz v3, :cond_30

    .line 97
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;

    .line 101
    :cond_30
    if-eqz v0, :cond_35

    iget-object v4, v0, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;->intent:Landroid/content/Intent;

    goto :goto_36

    :cond_35
    const/4 v4, 0x0

    :goto_36
    return-object v4
.end method
