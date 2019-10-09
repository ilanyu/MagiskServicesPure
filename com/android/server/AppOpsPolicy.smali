.class public Lcom/android/server/AppOpsPolicy;
.super Ljava/lang/Object;
.source "AppOpsPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppOpsPolicy$PolicyOp;,
        Lcom/android/server/AppOpsPolicy$PolicyPkg;
    }
.end annotation


# static fields
.field public static final CONTROL_NOSHOW:I = 0x1

.field public static final CONTROL_SHOW:I = 0x0

.field public static final CONTROL_UNKNOWN:I = 0x2

.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "AppOpsPolicy"


# instance fields
.field final mContext:Landroid/content/Context;

.field final mFile:Ljava/io/File;

.field mPolicy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/AppOpsPolicy$PolicyPkg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;Landroid/content/Context;)V
    .registers 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "context"    # Landroid/content/Context;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    .line 76
    iput-object p1, p0, Lcom/android/server/AppOpsPolicy;->mFile:Ljava/io/File;

    .line 77
    iput-object p2, p0, Lcom/android/server/AppOpsPolicy;->mContext:Landroid/content/Context;

    .line 78
    return-void
.end method

.method private getAppType(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 326
    const/4 v0, 0x0

    .line 327
    .local v0, "appType":Ljava/lang/String;
    const/4 v1, 0x0

    .line 328
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, p0, Lcom/android/server/AppOpsPolicy;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_25

    .line 330
    :try_start_6
    iget-object v2, p0, Lcom/android/server/AppOpsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_11} :catch_13

    move-object v1, v2

    .line 334
    goto :goto_15

    .line 332
    :catch_13
    move-exception v2

    .line 333
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .line 335
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_15
    if-eqz v1, :cond_2c

    .line 336
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_21

    .line 337
    const-string/jumbo v0, "system-app"

    goto :goto_2c

    .line 339
    :cond_21
    const-string/jumbo v0, "user-app"

    goto :goto_2c

    .line 343
    :cond_25
    const-string v2, "AppOpsPolicy"

    const-string v3, "Context is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_2c
    :goto_2c
    return-object v0
.end method

.method private readApplicationPolicy(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 214
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .line 214
    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_4a

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 215
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4a

    .line 216
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 217
    goto :goto_4

    .line 219
    :cond_1b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "pkg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 221
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsPolicy;->readPkgPolicy(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_49

    .line 223
    :cond_2c
    const-string v3, "AppOpsPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <application>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 223
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 228
    .end local v1    # "tagName":Ljava/lang/String;
    :goto_49
    goto :goto_4

    .line 229
    :cond_4a
    return-void
.end method

.method private readDefaultPolicy(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .registers 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    const-string/jumbo v0, "user-app"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "system-app"

    .line 190
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 191
    return-void

    .line 193
    :cond_13
    const/4 v0, 0x0

    .line 194
    .local v0, "mode":I
    const/4 v1, 0x0

    const-string/jumbo v2, "show"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/AppOpsPolicy;->stringToControl(Ljava/lang/String;)I

    move-result v1

    .line 195
    .local v1, "show":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_26

    if-ne v1, v2, :cond_26

    .line 196
    return-void

    .line 198
    :cond_26
    iget-object v2, p0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsPolicy$PolicyPkg;

    .line 199
    .local v2, "pkg":Lcom/android/server/AppOpsPolicy$PolicyPkg;
    if-nez v2, :cond_3c

    .line 200
    new-instance v3, Lcom/android/server/AppOpsPolicy$PolicyPkg;

    invoke-direct {v3, p2, v0, v1, p2}, Lcom/android/server/AppOpsPolicy$PolicyPkg;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    move-object v2, v3

    .line 201
    iget-object v3, p0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v3, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5e

    .line 203
    :cond_3c
    const-string v3, "AppOpsPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duplicate policy found for package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " of type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iput v0, v2, Lcom/android/server/AppOpsPolicy$PolicyPkg;->mode:I

    .line 206
    iput v1, v2, Lcom/android/server/AppOpsPolicy$PolicyPkg;->show:I

    .line 208
    :goto_5e
    return-void
.end method

.method private readOpPolicy(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/AppOpsPolicy$PolicyPkg;)V
    .registers 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "pkg"    # Lcom/android/server/AppOpsPolicy$PolicyPkg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    if-nez p2, :cond_3

    .line 273
    return-void

    .line 275
    :cond_3
    const-string/jumbo v0, "name"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "opName":Ljava/lang/String;
    if-nez v0, :cond_15

    .line 277
    const-string v1, "AppOpsPolicy"

    const-string v2, "Op name is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return-void

    .line 280
    :cond_15
    const/4 v2, -0x1

    .line 281
    .local v2, "code":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_30

    .line 282
    const-string v1, "AppOpsPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown Op: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-void

    .line 285
    :cond_30
    const/4 v3, 0x0

    .line 286
    .local v3, "mode":I
    const-string/jumbo v4, "show"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/AppOpsPolicy;->stringToControl(Ljava/lang/String;)I

    move-result v1

    .line 287
    .local v1, "show":I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_42

    if-ne v1, v4, :cond_42

    .line 288
    return-void

    .line 290
    :cond_42
    invoke-virtual {p2, v2}, Lcom/android/server/AppOpsPolicy$PolicyPkg;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsPolicy$PolicyOp;

    .line 291
    .local v4, "op":Lcom/android/server/AppOpsPolicy$PolicyOp;
    if-nez v4, :cond_54

    .line 292
    new-instance v5, Lcom/android/server/AppOpsPolicy$PolicyOp;

    invoke-direct {v5, v2, v3, v1}, Lcom/android/server/AppOpsPolicy$PolicyOp;-><init>(III)V

    move-object v4, v5

    .line 293
    invoke-virtual {p2, v2, v4}, Lcom/android/server/AppOpsPolicy$PolicyPkg;->put(ILjava/lang/Object;)V

    goto :goto_84

    .line 295
    :cond_54
    const-string v5, "AppOpsPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Duplicate policy found for package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p2, Lcom/android/server/AppOpsPolicy$PolicyPkg;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p2, Lcom/android/server/AppOpsPolicy$PolicyPkg;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " op: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/server/AppOpsPolicy$PolicyOp;->op:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iput v3, v4, Lcom/android/server/AppOpsPolicy$PolicyOp;->mode:I

    .line 298
    iput v1, v4, Lcom/android/server/AppOpsPolicy$PolicyOp;->show:I

    .line 300
    :goto_84
    return-void
.end method

.method private readPkgPolicy(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 14
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    const-string/jumbo v0, "name"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "packageName":Ljava/lang/String;
    if-nez v0, :cond_b

    .line 235
    return-void

    .line 236
    :cond_b
    const-string/jumbo v2, "type"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, "appType":Ljava/lang/String;
    if-nez v2, :cond_15

    .line 238
    return-void

    .line 239
    :cond_15
    const/4 v3, 0x0

    .line 240
    .local v3, "mode":I
    const-string/jumbo v4, "show"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/AppOpsPolicy;->stringToControl(Ljava/lang/String;)I

    move-result v1

    .line 241
    .local v1, "show":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 242
    .local v4, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppOpsPolicy$PolicyPkg;

    .line 243
    .local v5, "pkg":Lcom/android/server/AppOpsPolicy$PolicyPkg;
    if-nez v5, :cond_4b

    .line 244
    new-instance v6, Lcom/android/server/AppOpsPolicy$PolicyPkg;

    invoke-direct {v6, v0, v3, v1, v2}, Lcom/android/server/AppOpsPolicy$PolicyPkg;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    move-object v5, v6

    .line 245
    iget-object v6, p0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6d

    .line 247
    :cond_4b
    const-string v6, "AppOpsPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Duplicate policy found for package: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " of type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iput v3, v5, Lcom/android/server/AppOpsPolicy$PolicyPkg;->mode:I

    .line 250
    iput v1, v5, Lcom/android/server/AppOpsPolicy$PolicyPkg;->show:I

    .line 253
    :goto_6d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 255
    .local v6, "outerDepth":I
    :cond_71
    :goto_71
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    move v8, v7

    .line 255
    .local v8, "type":I
    const/4 v9, 0x1

    if-eq v7, v9, :cond_b7

    const/4 v7, 0x3

    if-ne v8, v7, :cond_82

    .line 256
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v6, :cond_b7

    .line 257
    :cond_82
    if-eq v8, v7, :cond_71

    const/4 v7, 0x4

    if-ne v8, v7, :cond_88

    .line 258
    goto :goto_71

    .line 260
    :cond_88
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 261
    .local v7, "tagName":Ljava/lang/String;
    const-string/jumbo v9, "op"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_99

    .line 262
    invoke-direct {p0, p1, v5}, Lcom/android/server/AppOpsPolicy;->readOpPolicy(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/AppOpsPolicy$PolicyPkg;)V

    goto :goto_b6

    .line 264
    :cond_99
    const-string v9, "AppOpsPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown element under <pkg>: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 267
    .end local v7    # "tagName":Ljava/lang/String;
    :goto_b6
    goto :goto_71

    .line 268
    :cond_b7
    return-void
.end method

.method public static stringToControl(Ljava/lang/String;)I
    .registers 2
    .param p0, "show"    # Ljava/lang/String;

    .line 64
    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 65
    const/4 v0, 0x0

    return v0

    .line 66
    :cond_b
    const-string v0, "false"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 67
    const/4 v0, 0x1

    return v0

    .line 69
    :cond_15
    const/4 v0, 0x2

    return v0
.end method


# virtual methods
.method debugPoilcy()V
    .registers 6

    .line 303
    iget-object v0, p0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 304
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 305
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsPolicy$PolicyPkg;>;>;"
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 306
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 309
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsPolicy$PolicyPkg;

    .line 310
    .local v2, "pkg":Lcom/android/server/AppOpsPolicy$PolicyPkg;
    if-nez v2, :cond_27

    .line 313
    goto :goto_a

    .line 317
    :cond_27
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_28
    invoke-virtual {v2}, Lcom/android/server/AppOpsPolicy$PolicyPkg;->size()I

    move-result v4

    if-ge v3, v4, :cond_37

    .line 318
    invoke-virtual {v2, v3}, Lcom/android/server/AppOpsPolicy$PolicyPkg;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsPolicy$PolicyOp;

    .line 317
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 322
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "pkg":Lcom/android/server/AppOpsPolicy$PolicyPkg;
    .end local v3    # "i":I
    :cond_37
    goto :goto_a

    .line 323
    :cond_38
    return-void
.end method

.method public getDefualtMode(ILjava/lang/String;)I
    .registers 10
    .param p1, "code"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 390
    const/4 v0, 0x2

    .line 395
    .local v0, "mode":I
    iget-object v1, p0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    if-nez v1, :cond_6

    .line 396
    return v0

    .line 401
    :cond_6
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsPolicy;->getAppType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 402
    .local v1, "type":Ljava/lang/String;
    const/4 v2, 0x2

    if-eqz v1, :cond_1e

    .line 404
    move-object v3, v1

    .line 405
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsPolicy$PolicyPkg;

    .line 406
    .local v4, "pkg":Lcom/android/server/AppOpsPolicy$PolicyPkg;
    if-eqz v4, :cond_1e

    iget v5, v4, Lcom/android/server/AppOpsPolicy$PolicyPkg;->mode:I

    if-eq v5, v2, :cond_1e

    .line 409
    iget v0, v4, Lcom/android/server/AppOpsPolicy$PolicyPkg;->mode:I

    .line 413
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "pkg":Lcom/android/server/AppOpsPolicy$PolicyPkg;
    :cond_1e
    move-object v3, p2

    .line 414
    .restart local v3    # "key":Ljava/lang/String;
    if-eqz v1, :cond_35

    .line 415
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 417
    :cond_35
    iget-object v4, p0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsPolicy$PolicyPkg;

    .line 418
    .restart local v4    # "pkg":Lcom/android/server/AppOpsPolicy$PolicyPkg;
    if-eqz v4, :cond_53

    .line 419
    iget v5, v4, Lcom/android/server/AppOpsPolicy$PolicyPkg;->mode:I

    if-eq v5, v2, :cond_45

    .line 422
    iget v0, v4, Lcom/android/server/AppOpsPolicy$PolicyPkg;->mode:I

    .line 425
    :cond_45
    invoke-virtual {v4, p1}, Lcom/android/server/AppOpsPolicy$PolicyPkg;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppOpsPolicy$PolicyOp;

    .line 426
    .local v5, "op":Lcom/android/server/AppOpsPolicy$PolicyOp;
    if-eqz v5, :cond_53

    .line 427
    iget v6, v5, Lcom/android/server/AppOpsPolicy$PolicyOp;->mode:I

    if-eq v6, v2, :cond_53

    .line 430
    iget v0, v5, Lcom/android/server/AppOpsPolicy$PolicyOp;->mode:I

    .line 436
    .end local v5    # "op":Lcom/android/server/AppOpsPolicy$PolicyOp;
    :cond_53
    return v0
.end method

.method public isControlAllowed(ILjava/lang/String;)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 349
    const/4 v0, 0x1

    .line 350
    .local v0, "isShow":Z
    const/4 v1, 0x2

    .line 355
    .local v1, "show":I
    iget-object v2, p0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    if-nez v2, :cond_7

    .line 356
    return v0

    .line 359
    :cond_7
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsPolicy;->getAppType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 360
    .local v2, "type":Ljava/lang/String;
    const/4 v3, 0x2

    if-eqz v2, :cond_1f

    .line 361
    move-object v4, v2

    .line 362
    .local v4, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppOpsPolicy$PolicyPkg;

    .line 363
    .local v5, "pkg":Lcom/android/server/AppOpsPolicy$PolicyPkg;
    if-eqz v5, :cond_1f

    iget v6, v5, Lcom/android/server/AppOpsPolicy$PolicyPkg;->show:I

    if-eq v6, v3, :cond_1f

    .line 364
    iget v1, v5, Lcom/android/server/AppOpsPolicy$PolicyPkg;->show:I

    .line 367
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "pkg":Lcom/android/server/AppOpsPolicy$PolicyPkg;
    :cond_1f
    move-object v4, p2

    .line 368
    .restart local v4    # "key":Ljava/lang/String;
    if-eqz v2, :cond_36

    .line 369
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 371
    :cond_36
    iget-object v5, p0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppOpsPolicy$PolicyPkg;

    .line 372
    .restart local v5    # "pkg":Lcom/android/server/AppOpsPolicy$PolicyPkg;
    if-eqz v5, :cond_54

    .line 373
    iget v6, v5, Lcom/android/server/AppOpsPolicy$PolicyPkg;->show:I

    if-eq v6, v3, :cond_46

    .line 374
    iget v1, v5, Lcom/android/server/AppOpsPolicy$PolicyPkg;->show:I

    .line 376
    :cond_46
    invoke-virtual {v5, p1}, Lcom/android/server/AppOpsPolicy$PolicyPkg;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AppOpsPolicy$PolicyOp;

    .line 377
    .local v6, "op":Lcom/android/server/AppOpsPolicy$PolicyOp;
    if-eqz v6, :cond_54

    .line 378
    iget v7, v6, Lcom/android/server/AppOpsPolicy$PolicyOp;->show:I

    if-eq v7, v3, :cond_54

    .line 379
    iget v1, v6, Lcom/android/server/AppOpsPolicy$PolicyOp;->show:I

    .line 383
    .end local v6    # "op":Lcom/android/server/AppOpsPolicy$PolicyOp;
    :cond_54
    const/4 v3, 0x1

    if-ne v1, v3, :cond_58

    .line 384
    const/4 v0, 0x0

    .line 386
    :cond_58
    return v0
.end method

.method readPolicy()V
    .registers 12

    .line 121
    iget-object v0, p0, Lcom/android/server/AppOpsPolicy;->mFile:Ljava/io/File;

    monitor-enter v0

    .line 123
    :try_start_3
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/android/server/AppOpsPolicy;->mFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_a} :catch_17d
    .catchall {:try_start_3 .. :try_end_a} :catchall_17b

    .line 128
    .local v1, "stream":Ljava/io/FileInputStream;
    nop

    .line 127
    nop

    .line 129
    const/4 v2, 0x0

    .line 131
    .local v2, "success":Z
    :try_start_d
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 132
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 134
    const/4 v2, 0x1

    .line 135
    :goto_16
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move v5, v4

    .line 135
    .local v5, "type":I
    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eq v4, v7, :cond_22

    if-eq v5, v6, :cond_22

    .line 135
    .end local v5    # "type":I
    goto :goto_16

    .line 139
    .restart local v5    # "type":I
    :cond_22
    if-ne v5, v7, :cond_8f

    .line 143
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    .line 144
    .local v4, "outerDepth":I
    :cond_28
    :goto_28
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    move v5, v7

    if-eq v7, v6, :cond_83

    const/4 v7, 0x3

    if-ne v5, v7, :cond_38

    .line 145
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v4, :cond_83

    .line 146
    :cond_38
    if-eq v5, v7, :cond_28

    const/4 v7, 0x4

    if-ne v5, v7, :cond_3e

    .line 148
    goto :goto_28

    .line 151
    :cond_3e
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 152
    .local v7, "tagName":Ljava/lang/String;
    const-string/jumbo v8, "user-app"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7f

    const-string/jumbo v8, "system-app"

    .line 153
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_55

    goto :goto_7f

    .line 155
    :cond_55
    const-string v8, "application"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_61

    .line 156
    invoke-direct {p0, v3}, Lcom/android/server/AppOpsPolicy;->readApplicationPolicy(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_82

    .line 158
    :cond_61
    const-string v8, "AppOpsPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown element under <appops-policy>: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 158
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 160
    .end local v7    # "tagName":Ljava/lang/String;
    goto :goto_82

    .line 154
    .restart local v7    # "tagName":Ljava/lang/String;
    :cond_7f
    :goto_7f
    invoke-direct {p0, v3, v7}, Lcom/android/server/AppOpsPolicy;->readDefaultPolicy(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_82
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_82} :catch_147
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_82} :catch_125
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_82} :catch_103
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_82} :catch_e1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_82} :catch_be
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_82} :catch_9b
    .catchall {:try_start_d .. :try_end_82} :catchall_98

    .line 162
    .end local v7    # "tagName":Ljava/lang/String;
    :goto_82
    goto :goto_28

    .line 176
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "outerDepth":I
    .end local v5    # "type":I
    :cond_83
    if-nez v2, :cond_8a

    .line 177
    :try_start_85
    iget-object v3, p0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V
    :try_end_8a
    .catchall {:try_start_85 .. :try_end_8a} :catchall_17b

    .line 180
    :cond_8a
    :try_start_8a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_169
    .catchall {:try_start_8a .. :try_end_8d} :catchall_17b

    goto/16 :goto_168

    .line 140
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "type":I
    :cond_8f
    :try_start_8f
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "no start tag found"

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_98
    .catch Ljava/lang/IllegalStateException; {:try_start_8f .. :try_end_98} :catch_147
    .catch Ljava/lang/NullPointerException; {:try_start_8f .. :try_end_98} :catch_125
    .catch Ljava/lang/NumberFormatException; {:try_start_8f .. :try_end_98} :catch_103
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8f .. :try_end_98} :catch_e1
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_98} :catch_be
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8f .. :try_end_98} :catch_9b
    .catchall {:try_start_8f .. :try_end_98} :catchall_98

    .line 176
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "type":I
    :catchall_98
    move-exception v3

    goto/16 :goto_16e

    .line 173
    :catch_9b
    move-exception v3

    .line 174
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_9c
    const-string v4, "AppOpsPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b2
    .catchall {:try_start_9c .. :try_end_b2} :catchall_98

    .line 176
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    if-nez v2, :cond_b9

    .line 177
    :try_start_b4
    iget-object v3, p0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V
    :try_end_b9
    .catchall {:try_start_b4 .. :try_end_b9} :catchall_17b

    .line 180
    :cond_b9
    :try_start_b9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_bc} :catch_169
    .catchall {:try_start_b9 .. :try_end_bc} :catchall_17b

    goto/16 :goto_168

    .line 171
    :catch_be
    move-exception v3

    .line 172
    .local v3, "e":Ljava/io/IOException;
    :try_start_bf
    const-string v4, "AppOpsPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d5
    .catchall {:try_start_bf .. :try_end_d5} :catchall_98

    .line 176
    .end local v3    # "e":Ljava/io/IOException;
    if-nez v2, :cond_dc

    .line 177
    :try_start_d7
    iget-object v3, p0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V
    :try_end_dc
    .catchall {:try_start_d7 .. :try_end_dc} :catchall_17b

    .line 180
    :cond_dc
    :try_start_dc
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_df
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_df} :catch_169
    .catchall {:try_start_dc .. :try_end_df} :catchall_17b

    goto/16 :goto_168

    .line 169
    :catch_e1
    move-exception v3

    .line 170
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_e2
    const-string v4, "AppOpsPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f8
    .catchall {:try_start_e2 .. :try_end_f8} :catchall_98

    .line 176
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-nez v2, :cond_ff

    .line 177
    :try_start_fa
    iget-object v3, p0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V
    :try_end_ff
    .catchall {:try_start_fa .. :try_end_ff} :catchall_17b

    .line 180
    :cond_ff
    :try_start_ff
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_102
    .catch Ljava/io/IOException; {:try_start_ff .. :try_end_102} :catch_169
    .catchall {:try_start_ff .. :try_end_102} :catchall_17b

    goto :goto_168

    .line 167
    :catch_103
    move-exception v3

    .line 168
    .local v3, "e":Ljava/lang/NumberFormatException;
    :try_start_104
    const-string v4, "AppOpsPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11a
    .catchall {:try_start_104 .. :try_end_11a} :catchall_98

    .line 176
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    if-nez v2, :cond_121

    .line 177
    :try_start_11c
    iget-object v3, p0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V
    :try_end_121
    .catchall {:try_start_11c .. :try_end_121} :catchall_17b

    .line 180
    :cond_121
    :try_start_121
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_124
    .catch Ljava/io/IOException; {:try_start_121 .. :try_end_124} :catch_169
    .catchall {:try_start_121 .. :try_end_124} :catchall_17b

    goto :goto_168

    .line 165
    :catch_125
    move-exception v3

    .line 166
    .local v3, "e":Ljava/lang/NullPointerException;
    :try_start_126
    const-string v4, "AppOpsPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13c
    .catchall {:try_start_126 .. :try_end_13c} :catchall_98

    .line 176
    .end local v3    # "e":Ljava/lang/NullPointerException;
    if-nez v2, :cond_143

    .line 177
    :try_start_13e
    iget-object v3, p0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V
    :try_end_143
    .catchall {:try_start_13e .. :try_end_143} :catchall_17b

    .line 180
    :cond_143
    :try_start_143
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_146
    .catch Ljava/io/IOException; {:try_start_143 .. :try_end_146} :catch_169
    .catchall {:try_start_143 .. :try_end_146} :catchall_17b

    goto :goto_168

    .line 163
    :catch_147
    move-exception v3

    .line 164
    .local v3, "e":Ljava/lang/IllegalStateException;
    :try_start_148
    const-string v4, "AppOpsPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15e
    .catchall {:try_start_148 .. :try_end_15e} :catchall_98

    .line 176
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    if-nez v2, :cond_165

    .line 177
    :try_start_160
    iget-object v3, p0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V
    :try_end_165
    .catchall {:try_start_160 .. :try_end_165} :catchall_17b

    .line 180
    :cond_165
    :try_start_165
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_168
    .catch Ljava/io/IOException; {:try_start_165 .. :try_end_168} :catch_169
    .catchall {:try_start_165 .. :try_end_168} :catchall_17b

    .line 182
    :goto_168
    goto :goto_16b

    .line 181
    :catch_169
    move-exception v3

    .line 183
    nop

    .line 184
    .end local v2    # "success":Z
    :goto_16b
    :try_start_16b
    monitor-exit v0

    move-object v0, v1

    .line 185
    .end local v1    # "stream":Ljava/io/FileInputStream;
    .local v0, "stream":Ljava/io/FileInputStream;
    return-void

    .line 176
    .end local v0    # "stream":Ljava/io/FileInputStream;
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "success":Z
    :goto_16e
    if-nez v2, :cond_175

    .line 177
    iget-object v4, p0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V
    :try_end_175
    .catchall {:try_start_16b .. :try_end_175} :catchall_17b

    .line 180
    :cond_175
    :try_start_175
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_178
    .catch Ljava/io/IOException; {:try_start_175 .. :try_end_178} :catch_179
    .catchall {:try_start_175 .. :try_end_178} :catchall_17b

    .line 182
    goto :goto_17a

    .line 181
    :catch_179
    move-exception v4

    .line 182
    :goto_17a
    :try_start_17a
    throw v3

    .line 184
    .end local v1    # "stream":Ljava/io/FileInputStream;
    .end local v2    # "success":Z
    :catchall_17b
    move-exception v1

    goto :goto_1a1

    .line 124
    :catch_17d
    move-exception v1

    .line 125
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v2, "AppOpsPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App ops policy file ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/AppOpsPolicy;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") not found; Skipping."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    monitor-exit v0

    return-void

    .line 184
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_1a1
    monitor-exit v0
    :try_end_1a2
    .catchall {:try_start_17a .. :try_end_1a2} :catchall_17b

    throw v1
.end method
