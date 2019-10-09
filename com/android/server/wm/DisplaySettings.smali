.class public Lcom/android/server/wm/DisplaySettings;
.super Ljava/lang/Object;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplaySettings$Entry;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/DisplaySettings$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mFile:Landroid/util/AtomicFile;


# direct methods
.method public constructor <init>()V
    .registers 6

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    .line 65
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 66
    .local v0, "dataDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    .local v1, "systemDir":Ljava/io/File;
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string v4, "display_settings.xml"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v4, "wm-displays"

    invoke-direct {v2, v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplaySettings;->mFile:Landroid/util/AtomicFile;

    .line 68
    return-void
.end method

.method private getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .registers 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "name"    # Ljava/lang/String;

    .line 173
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_e

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_c} :catch_f

    move v1, v2

    nop

    :cond_e
    return v1

    .line 175
    .end local v0    # "str":Ljava/lang/String;
    :catch_f
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/NumberFormatException;
    return v1
.end method

.method private readDisplay(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    const-string/jumbo v0, "name"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_38

    .line 184
    new-instance v1, Lcom/android/server/wm/DisplaySettings$Entry;

    invoke-direct {v1, v0}, Lcom/android/server/wm/DisplaySettings$Entry;-><init>(Ljava/lang/String;)V

    .line 185
    .local v1, "entry":Lcom/android/server/wm/DisplaySettings$Entry;
    const-string/jumbo v2, "overscanLeft"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/DisplaySettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/server/wm/DisplaySettings$Entry;->overscanLeft:I

    .line 186
    const-string/jumbo v2, "overscanTop"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/DisplaySettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/server/wm/DisplaySettings$Entry;->overscanTop:I

    .line 187
    const-string/jumbo v2, "overscanRight"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/DisplaySettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/server/wm/DisplaySettings$Entry;->overscanRight:I

    .line 188
    const-string/jumbo v2, "overscanBottom"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/DisplaySettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/server/wm/DisplaySettings$Entry;->overscanBottom:I

    .line 189
    iget-object v2, p0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .end local v1    # "entry":Lcom/android/server/wm/DisplaySettings$Entry;
    :cond_38
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 192
    return-void
.end method


# virtual methods
.method public getOverscanLocked(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uniqueId"    # Ljava/lang/String;
    .param p3, "outRect"    # Landroid/graphics/Rect;

    .line 74
    if-eqz p2, :cond_d

    iget-object v0, p0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplaySettings$Entry;

    move-object v1, v0

    .local v1, "entry":Lcom/android/server/wm/DisplaySettings$Entry;
    if-nez v0, :cond_16

    .line 75
    .end local v1    # "entry":Lcom/android/server/wm/DisplaySettings$Entry;
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/wm/DisplaySettings$Entry;

    .restart local v1    # "entry":Lcom/android/server/wm/DisplaySettings$Entry;
    :cond_16
    move-object v0, v1

    .line 77
    .end local v1    # "entry":Lcom/android/server/wm/DisplaySettings$Entry;
    .local v0, "entry":Lcom/android/server/wm/DisplaySettings$Entry;
    if-eqz v0, :cond_2a

    .line 78
    iget v1, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanLeft:I

    iput v1, p3, Landroid/graphics/Rect;->left:I

    .line 79
    iget v1, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanTop:I

    iput v1, p3, Landroid/graphics/Rect;->top:I

    .line 80
    iget v1, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanRight:I

    iput v1, p3, Landroid/graphics/Rect;->right:I

    .line 81
    iget v1, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanBottom:I

    iput v1, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_2e

    .line 83
    :cond_2a
    const/4 v1, 0x0

    invoke-virtual {p3, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 85
    :goto_2e
    return-void
.end method

.method public readSettingsLocked()V
    .registers 11

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/DisplaySettings;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_6} :catch_165

    .line 116
    .local v0, "stream":Ljava/io/FileInputStream;
    nop

    .line 115
    nop

    .line 117
    const/4 v1, 0x0

    .line 119
    .local v1, "success":Z
    :try_start_9
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 120
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 122
    :goto_16
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .line 122
    .local v4, "type":I
    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v3, v6, :cond_22

    if-eq v4, v5, :cond_22

    .line 122
    .end local v4    # "type":I
    goto :goto_16

    .line 127
    .restart local v4    # "type":I
    :cond_22
    if-ne v4, v6, :cond_7c

    .line 131
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 132
    .local v3, "outerDepth":I
    :cond_28
    :goto_28
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v4, v6

    if-eq v6, v5, :cond_6c

    const/4 v6, 0x3

    if-ne v4, v6, :cond_38

    .line 133
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v3, :cond_6c

    .line 134
    :cond_38
    if-eq v4, v6, :cond_28

    const/4 v6, 0x4

    if-ne v4, v6, :cond_3e

    .line 135
    goto :goto_28

    .line 138
    :cond_3e
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 139
    .local v6, "tagName":Ljava/lang/String;
    const-string v7, "display"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4e

    .line 140
    invoke-direct {p0, v2}, Lcom/android/server/wm/DisplaySettings;->readDisplay(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6b

    .line 142
    :cond_4e
    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown element under <display-settings>: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 142
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_6b
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_6b} :catch_134
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_6b} :catch_111
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_6b} :catch_ee
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_6b} :catch_cc
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_6b} :catch_aa
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_6b} :catch_88
    .catchall {:try_start_9 .. :try_end_6b} :catchall_85

    .line 146
    .end local v6    # "tagName":Ljava/lang/String;
    :goto_6b
    goto :goto_28

    .line 147
    :cond_6c
    const/4 v1, 0x1

    .line 161
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "outerDepth":I
    .end local v4    # "type":I
    if-nez v1, :cond_74

    .line 162
    iget-object v2, p0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 165
    :cond_74
    :try_start_74
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_79

    .line 167
    :goto_77
    goto/16 :goto_157

    .line 166
    :catch_79
    move-exception v2

    .line 168
    goto/16 :goto_157

    .line 128
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "type":I
    :cond_7c
    :try_start_7c
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "no start tag found"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_85
    .catch Ljava/lang/IllegalStateException; {:try_start_7c .. :try_end_85} :catch_134
    .catch Ljava/lang/NullPointerException; {:try_start_7c .. :try_end_85} :catch_111
    .catch Ljava/lang/NumberFormatException; {:try_start_7c .. :try_end_85} :catch_ee
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7c .. :try_end_85} :catch_cc
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_85} :catch_aa
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7c .. :try_end_85} :catch_88
    .catchall {:try_start_7c .. :try_end_85} :catchall_85

    .line 161
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "type":I
    :catchall_85
    move-exception v2

    goto/16 :goto_158

    .line 158
    :catch_88
    move-exception v2

    .line 159
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_89
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9f
    .catchall {:try_start_89 .. :try_end_9f} :catchall_85

    .line 161
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    if-nez v1, :cond_a6

    .line 162
    iget-object v2, p0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 165
    :cond_a6
    :try_start_a6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a9} :catch_79

    goto :goto_77

    .line 156
    :catch_aa
    move-exception v2

    .line 157
    .local v2, "e":Ljava/io/IOException;
    :try_start_ab
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c1
    .catchall {:try_start_ab .. :try_end_c1} :catchall_85

    .line 161
    .end local v2    # "e":Ljava/io/IOException;
    if-nez v1, :cond_c8

    .line 162
    iget-object v2, p0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 165
    :cond_c8
    :try_start_c8
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_cb
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_cb} :catch_79

    goto :goto_77

    .line 154
    :catch_cc
    move-exception v2

    .line 155
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_cd
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e3
    .catchall {:try_start_cd .. :try_end_e3} :catchall_85

    .line 161
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-nez v1, :cond_ea

    .line 162
    iget-object v2, p0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 165
    :cond_ea
    :try_start_ea
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_ed
    .catch Ljava/io/IOException; {:try_start_ea .. :try_end_ed} :catch_79

    goto :goto_77

    .line 152
    :catch_ee
    move-exception v2

    .line 153
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_ef
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_105
    .catchall {:try_start_ef .. :try_end_105} :catchall_85

    .line 161
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    if-nez v1, :cond_10c

    .line 162
    iget-object v2, p0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 165
    :cond_10c
    :try_start_10c
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_10f
    .catch Ljava/io/IOException; {:try_start_10c .. :try_end_10f} :catch_79

    goto/16 :goto_77

    .line 150
    :catch_111
    move-exception v2

    .line 151
    .local v2, "e":Ljava/lang/NullPointerException;
    :try_start_112
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_128
    .catchall {:try_start_112 .. :try_end_128} :catchall_85

    .line 161
    .end local v2    # "e":Ljava/lang/NullPointerException;
    if-nez v1, :cond_12f

    .line 162
    iget-object v2, p0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 165
    :cond_12f
    :try_start_12f
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_132
    .catch Ljava/io/IOException; {:try_start_12f .. :try_end_132} :catch_79

    goto/16 :goto_77

    .line 148
    :catch_134
    move-exception v2

    .line 149
    .local v2, "e":Ljava/lang/IllegalStateException;
    :try_start_135
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14b
    .catchall {:try_start_135 .. :try_end_14b} :catchall_85

    .line 161
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    if-nez v1, :cond_152

    .line 162
    iget-object v2, p0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 165
    :cond_152
    :try_start_152
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_155
    .catch Ljava/io/IOException; {:try_start_152 .. :try_end_155} :catch_79

    goto/16 :goto_77

    .line 169
    :goto_157
    return-void

    .line 161
    :goto_158
    if-nez v1, :cond_15f

    .line 162
    iget-object v3, p0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 165
    :cond_15f
    :try_start_15f
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_162
    .catch Ljava/io/IOException; {:try_start_15f .. :try_end_162} :catch_163

    .line 167
    goto :goto_164

    .line 166
    :catch_163
    move-exception v3

    .line 167
    :goto_164
    throw v2

    .line 112
    .end local v0    # "stream":Ljava/io/FileInputStream;
    .end local v1    # "success":Z
    :catch_165
    move-exception v0

    .line 113
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No existing display settings "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/DisplaySettings;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; starting empty"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void
.end method

.method public setOverscanLocked(Ljava/lang/String;Ljava/lang/String;IIII)V
    .registers 9
    .param p1, "uniqueId"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    .line 89
    if-nez p3, :cond_13

    if-nez p4, :cond_13

    if-nez p5, :cond_13

    if-nez p6, :cond_13

    .line 92
    iget-object v0, p0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    return-void

    .line 97
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplaySettings$Entry;

    .line 98
    .local v0, "entry":Lcom/android/server/wm/DisplaySettings$Entry;
    if-nez v0, :cond_28

    .line 99
    new-instance v1, Lcom/android/server/wm/DisplaySettings$Entry;

    invoke-direct {v1, p1}, Lcom/android/server/wm/DisplaySettings$Entry;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 100
    iget-object v1, p0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_28
    iput p3, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanLeft:I

    .line 103
    iput p4, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanTop:I

    .line 104
    iput p5, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanRight:I

    .line 105
    iput p6, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanBottom:I

    .line 106
    return-void
.end method

.method public writeSettingsLocked()V
    .registers 8

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/DisplaySettings;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_a9

    .line 201
    .local v0, "stream":Ljava/io/FileOutputStream;
    nop

    .line 200
    nop

    .line 204
    :try_start_8
    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 205
    .local v1, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 206
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 207
    const-string v2, "display-settings"

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 209
    iget-object v2, p0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DisplaySettings$Entry;

    .line 210
    .local v4, "entry":Lcom/android/server/wm/DisplaySettings$Entry;
    const-string v5, "display"

    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 211
    const-string/jumbo v5, "name"

    iget-object v6, v4, Lcom/android/server/wm/DisplaySettings$Entry;->name:Ljava/lang/String;

    invoke-interface {v1, v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 212
    iget v5, v4, Lcom/android/server/wm/DisplaySettings$Entry;->overscanLeft:I

    if-eqz v5, :cond_57

    .line 213
    const-string/jumbo v5, "overscanLeft"

    iget v6, v4, Lcom/android/server/wm/DisplaySettings$Entry;->overscanLeft:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 215
    :cond_57
    iget v5, v4, Lcom/android/server/wm/DisplaySettings$Entry;->overscanTop:I

    if-eqz v5, :cond_67

    .line 216
    const-string/jumbo v5, "overscanTop"

    iget v6, v4, Lcom/android/server/wm/DisplaySettings$Entry;->overscanTop:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 218
    :cond_67
    iget v5, v4, Lcom/android/server/wm/DisplaySettings$Entry;->overscanRight:I

    if-eqz v5, :cond_77

    .line 219
    const-string/jumbo v5, "overscanRight"

    iget v6, v4, Lcom/android/server/wm/DisplaySettings$Entry;->overscanRight:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 221
    :cond_77
    iget v5, v4, Lcom/android/server/wm/DisplaySettings$Entry;->overscanBottom:I

    if-eqz v5, :cond_87

    .line 222
    const-string/jumbo v5, "overscanBottom"

    iget v6, v4, Lcom/android/server/wm/DisplaySettings$Entry;->overscanBottom:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 224
    :cond_87
    const-string v5, "display"

    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 225
    .end local v4    # "entry":Lcom/android/server/wm/DisplaySettings$Entry;
    goto :goto_2e

    .line 227
    :cond_8d
    const-string v2, "display-settings"

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 228
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 229
    iget-object v2, p0, Lcom/android/server/wm/DisplaySettings;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_9a} :catch_9b

    .line 233
    .end local v1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_a8

    .line 230
    :catch_9b
    move-exception v1

    .line 231
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "WindowManager"

    const-string v3, "Failed to write display settings, restoring backup."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    iget-object v2, p0, Lcom/android/server/wm/DisplaySettings;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 234
    .end local v1    # "e":Ljava/io/IOException;
    :goto_a8
    return-void

    .line 198
    .end local v0    # "stream":Ljava/io/FileOutputStream;
    :catch_a9
    move-exception v0

    .line 199
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to write display settings: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void
.end method
