.class public Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;
.super Ljava/lang/Object;
.source "RecoverySessionStorage.java"

# interfaces
.implements Ljavax/security/auth/Destroyable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;
    }
.end annotation


# instance fields
.field private final mSessionsByUid:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->mSessionsByUid:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic lambda$remove$0(Ljava/lang/String;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;)Z
    .registers 3
    .param p0, "sessionId"    # Ljava/lang/String;
    .param p1, "session"    # Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;

    .line 82
    # getter for: Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mSessionId:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->access$000(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public add(ILcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "entry"    # Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;

    .line 69
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->mSessionsByUid:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    .line 70
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->mSessionsByUid:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    :cond_12
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->mSessionsByUid:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method public destroy()V
    .registers 6

    .line 125
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->mSessionsByUid:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 126
    .local v0, "numberOfUids":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_28

    .line 127
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->mSessionsByUid:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 128
    .local v2, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;

    .line 129
    .local v4, "entry":Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;
    invoke-virtual {v4}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->destroy()V

    .line 130
    .end local v4    # "entry":Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;
    goto :goto_15

    .line 126
    .end local v2    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;>;"
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 132
    .end local v1    # "i":I
    :cond_28
    return-void
.end method

.method public get(ILjava/lang/String;)Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;
    .registers 8
    .param p1, "uid"    # I
    .param p2, "sessionId"    # Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->mSessionsByUid:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 49
    .local v0, "userEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 50
    return-object v1

    .line 52
    :cond_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;

    .line 53
    .local v3, "entry":Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;
    # getter for: Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mSessionId:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->access$000(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 54
    return-object v3

    .line 56
    .end local v3    # "entry":Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;
    :cond_27
    goto :goto_10

    .line 57
    :cond_28
    return-object v1
.end method

.method public remove(I)V
    .registers 5
    .param p1, "uid"    # I

    .line 93
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->mSessionsByUid:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 94
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;>;"
    if-nez v0, :cond_b

    .line 95
    return-void

    .line 97
    :cond_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;

    .line 98
    .local v2, "entry":Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;
    invoke-virtual {v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->destroy()V

    .line 99
    .end local v2    # "entry":Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;
    goto :goto_f

    .line 100
    :cond_1f
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->mSessionsByUid:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 101
    return-void
.end method

.method public remove(ILjava/lang/String;)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "sessionId"    # Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->mSessionsByUid:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    .line 80
    return-void

    .line 82
    :cond_9
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->mSessionsByUid:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/storage/-$$Lambda$RecoverySessionStorage$1ayqf2qqdJH00fvbhBUKWso4cdc;

    invoke-direct {v1, p2}, Lcom/android/server/locksettings/recoverablekeystore/storage/-$$Lambda$RecoverySessionStorage$1ayqf2qqdJH00fvbhBUKWso4cdc;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 83
    return-void
.end method

.method public size()I
    .registers 6

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->mSessionsByUid:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 111
    .local v1, "numberOfUsers":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_1a

    .line 112
    iget-object v3, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->mSessionsByUid:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 113
    .local v3, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v0, v4

    .line 111
    .end local v3    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 115
    .end local v2    # "i":I
    :cond_1a
    return v0
.end method
