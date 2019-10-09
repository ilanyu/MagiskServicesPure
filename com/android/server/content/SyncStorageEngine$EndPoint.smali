.class public Lcom/android/server/content/SyncStorageEngine$EndPoint;
.super Ljava/lang/Object;
.source "SyncStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncStorageEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EndPoint"
.end annotation


# static fields
.field public static final USER_ALL_PROVIDER_ALL_ACCOUNTS_ALL:Lcom/android/server/content/SyncStorageEngine$EndPoint;


# instance fields
.field final account:Landroid/accounts/Account;

.field final provider:Ljava/lang/String;

.field final userId:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 187
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, v1, v2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->USER_ALL_PROVIDER_ALL_ACCOUNTS_ALL:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;Ljava/lang/String;I)V
    .registers 4
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "provider"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 195
    iput-object p2, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 196
    iput p3, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 197
    return-void
.end method


# virtual methods
.method public matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .registers 6
    .param p1, "spec"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 206
    iget v0, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget v1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_11

    iget v0, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    iget v0, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    if-eq v0, v1, :cond_11

    .line 209
    return v2

    .line 212
    :cond_11
    iget-object v0, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    if-nez v0, :cond_17

    .line 213
    const/4 v0, 0x1

    .local v0, "accountsMatch":Z
    goto :goto_1f

    .line 215
    .end local v0    # "accountsMatch":Z
    :cond_17
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 218
    .restart local v0    # "accountsMatch":Z
    :goto_1f
    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    if-nez v1, :cond_25

    .line 219
    const/4 v1, 0x1

    .local v1, "providersMatch":Z
    goto :goto_2d

    .line 221
    .end local v1    # "providersMatch":Z
    :cond_25
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 223
    .restart local v1    # "providersMatch":Z
    :goto_2d
    if-eqz v0, :cond_33

    if-eqz v1, :cond_33

    const/4 v2, 0x1

    nop

    :cond_33
    return v2
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    if-nez v1, :cond_c

    const-string v1, "ALL ACCS"

    goto :goto_10

    :cond_c
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    .line 229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    if-nez v1, :cond_1f

    const-string v1, "ALL PDRS"

    goto :goto_21

    :cond_1f
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    :goto_21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
