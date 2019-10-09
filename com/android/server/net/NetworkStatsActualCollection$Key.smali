.class Lcom/android/server/net/NetworkStatsActualCollection$Key;
.super Ljava/lang/Object;
.source "NetworkStatsActualCollection.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsActualCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/server/net/NetworkStatsActualCollection$Key;",
        ">;"
    }
.end annotation


# instance fields
.field private final hashCode:I

.field public final iface:Ljava/lang/String;

.field public final set:I

.field public final tag:I

.field public final uid:I


# direct methods
.method public constructor <init>(Landroid/net/NetworkStats$Entry;)V
    .registers 5
    .param p1, "entry"    # Landroid/net/NetworkStats$Entry;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iget v0, p1, Landroid/net/NetworkStats$Entry;->uid:I

    iput v0, p0, Lcom/android/server/net/NetworkStatsActualCollection$Key;->uid:I

    .line 146
    iget v0, p1, Landroid/net/NetworkStats$Entry;->set:I

    iput v0, p0, Lcom/android/server/net/NetworkStatsActualCollection$Key;->set:I

    .line 147
    iget v0, p1, Landroid/net/NetworkStats$Entry;->tag:I

    iput v0, p0, Lcom/android/server/net/NetworkStatsActualCollection$Key;->tag:I

    .line 148
    iget-object v0, p1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsActualCollection$Key;->iface:Ljava/lang/String;

    .line 149
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p1, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p1, Landroid/net/NetworkStats$Entry;->set:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/server/net/NetworkStatsActualCollection$Key;->hashCode:I

    .line 150
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/server/net/NetworkStatsActualCollection$Key;)I
    .registers 5
    .param p1, "another"    # Lcom/android/server/net/NetworkStatsActualCollection$Key;

    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "res":I
    iget v1, p0, Lcom/android/server/net/NetworkStatsActualCollection$Key;->uid:I

    iget v2, p1, Lcom/android/server/net/NetworkStatsActualCollection$Key;->uid:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 170
    if-nez v0, :cond_13

    .line 171
    iget v1, p0, Lcom/android/server/net/NetworkStatsActualCollection$Key;->set:I

    iget v2, p1, Lcom/android/server/net/NetworkStatsActualCollection$Key;->set:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 173
    :cond_13
    if-nez v0, :cond_1d

    .line 174
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsActualCollection$Key;->iface:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/net/NetworkStatsActualCollection$Key;->iface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 176
    :cond_1d
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 135
    check-cast p1, Lcom/android/server/net/NetworkStatsActualCollection$Key;

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkStatsActualCollection$Key;->compareTo(Lcom/android/server/net/NetworkStatsActualCollection$Key;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 159
    instance-of v0, p1, Lcom/android/server/net/NetworkStatsActualCollection$Key;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    .line 160
    move-object v0, p1

    check-cast v0, Lcom/android/server/net/NetworkStatsActualCollection$Key;

    .line 161
    .local v0, "key":Lcom/android/server/net/NetworkStatsActualCollection$Key;
    iget v2, p0, Lcom/android/server/net/NetworkStatsActualCollection$Key;->uid:I

    iget v3, v0, Lcom/android/server/net/NetworkStatsActualCollection$Key;->uid:I

    if-ne v2, v3, :cond_20

    iget v2, p0, Lcom/android/server/net/NetworkStatsActualCollection$Key;->set:I

    iget v3, v0, Lcom/android/server/net/NetworkStatsActualCollection$Key;->set:I

    if-ne v2, v3, :cond_20

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsActualCollection$Key;->iface:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsActualCollection$Key;->iface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v1, 0x1

    nop

    :cond_20
    return v1

    .line 163
    .end local v0    # "key":Lcom/android/server/net/NetworkStatsActualCollection$Key;
    :cond_21
    return v1
.end method

.method public hashCode()I
    .registers 2

    .line 154
    iget v0, p0, Lcom/android/server/net/NetworkStatsActualCollection$Key;->hashCode:I

    return v0
.end method
