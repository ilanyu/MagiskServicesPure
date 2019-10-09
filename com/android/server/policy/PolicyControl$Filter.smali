.class Lcom/android/server/policy/PolicyControl$Filter;
.super Ljava/lang/Object;
.source "PolicyControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PolicyControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Filter"
.end annotation


# static fields
.field private static final ALL:Ljava/lang/String; = "*"

.field private static final APPS:Ljava/lang/String; = "apps"


# instance fields
.field private final mBlacklist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWhitelist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 202
    .local p1, "whitelist":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p2, "blacklist":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p1, p0, Lcom/android/server/policy/PolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;

    .line 204
    iput-object p2, p0, Lcom/android/server/policy/PolicyControl$Filter;->mBlacklist:Landroid/util/ArraySet;

    .line 205
    return-void
.end method

.method private dump(Ljava/lang/String;Landroid/util/ArraySet;Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/PrintWriter;",
            ")V"
        }
    .end annotation

    .line 236
    .local p2, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "=("

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 238
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_22

    .line 239
    if-lez v1, :cond_16

    const/16 v2, 0x2c

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 240
    :cond_16
    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 238
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 242
    .end local v1    # "i":I
    :cond_22
    const/16 v1, 0x29

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 243
    return-void
.end method

.method private onBlacklist(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 222
    iget-object v0, p0, Lcom/android/server/policy/PolicyControl$Filter;->mBlacklist:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/server/policy/PolicyControl$Filter;->mBlacklist:Landroid/util/ArraySet;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method private onWhitelist(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 226
    iget-object v0, p0, Lcom/android/server/policy/PolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/server/policy/PolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method static parse(Ljava/lang/String;)Lcom/android/server/policy/PolicyControl$Filter;
    .registers 9
    .param p0, "value"    # Ljava/lang/String;

    .line 255
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 256
    :cond_4
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 257
    .local v0, "whitelist":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 258
    .local v1, "blacklist":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v3, :cond_3b

    aget-object v5, v2, v4

    .line 259
    .local v5, "token":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 260
    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_35

    .line 261
    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 262
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_38

    .line 264
    :cond_35
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 258
    .end local v5    # "token":Ljava/lang/String;
    :goto_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 267
    :cond_3b
    new-instance v2, Lcom/android/server/policy/PolicyControl$Filter;

    invoke-direct {v2, v0, v1}, Lcom/android/server/policy/PolicyControl$Filter;-><init>(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    return-object v2
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 230
    const-string v0, "Filter["

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 231
    const-string/jumbo v0, "whitelist"

    iget-object v1, p0, Lcom/android/server/policy/PolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/policy/PolicyControl$Filter;->dump(Ljava/lang/String;Landroid/util/ArraySet;Ljava/io/PrintWriter;)V

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 232
    const-string v0, "blacklist"

    iget-object v1, p0, Lcom/android/server/policy/PolicyControl$Filter;->mBlacklist:Landroid/util/ArraySet;

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/policy/PolicyControl$Filter;->dump(Ljava/lang/String;Landroid/util/ArraySet;Ljava/io/PrintWriter;)V

    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 233
    return-void
.end method

.method matches(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 7
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 208
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 209
    :cond_4
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_11

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x63

    if-gt v1, v3, :cond_11

    move v1, v2

    goto :goto_12

    :cond_11
    move v1, v0

    .line 211
    .local v1, "isApp":Z
    :goto_12
    if-eqz v1, :cond_1f

    iget-object v3, p0, Lcom/android/server/policy/PolicyControl$Filter;->mBlacklist:Landroid/util/ArraySet;

    const-string v4, "apps"

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    return v0

    .line 212
    :cond_1f
    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/policy/PolicyControl$Filter;->onBlacklist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    return v0

    .line 213
    :cond_28
    if-eqz v1, :cond_35

    iget-object v0, p0, Lcom/android/server/policy/PolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;

    const-string v3, "apps"

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    return v2

    .line 214
    :cond_35
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/policy/PolicyControl$Filter;->onWhitelist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method matches(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 218
    invoke-direct {p0, p1}, Lcom/android/server/policy/PolicyControl$Filter;->onBlacklist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0, p1}, Lcom/android/server/policy/PolicyControl$Filter;->onWhitelist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 247
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 248
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    invoke-virtual {p0, v1}, Lcom/android/server/policy/PolicyControl$Filter;->dump(Ljava/io/PrintWriter;)V

    .line 249
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
