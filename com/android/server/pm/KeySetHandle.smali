.class Lcom/android/server/pm/KeySetHandle;
.super Landroid/os/Binder;
.source "KeySetHandle.java"


# instance fields
.field private final mId:J

.field private mRefCount:I


# direct methods
.method protected constructor <init>(J)V
    .registers 4
    .param p1, "id"    # J

    .line 25
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 26
    iput-wide p1, p0, Lcom/android/server/pm/KeySetHandle;->mId:J

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/pm/KeySetHandle;->mRefCount:I

    .line 28
    return-void
.end method

.method protected constructor <init>(JI)V
    .registers 4
    .param p1, "id"    # J
    .param p3, "refCount"    # I

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    iput-wide p1, p0, Lcom/android/server/pm/KeySetHandle;->mId:J

    .line 35
    iput p3, p0, Lcom/android/server/pm/KeySetHandle;->mRefCount:I

    .line 36
    return-void
.end method


# virtual methods
.method protected decrRefCountLPw()I
    .registers 2

    .line 60
    iget v0, p0, Lcom/android/server/pm/KeySetHandle;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/pm/KeySetHandle;->mRefCount:I

    .line 61
    iget v0, p0, Lcom/android/server/pm/KeySetHandle;->mRefCount:I

    return v0
.end method

.method public getId()J
    .registers 3

    .line 39
    iget-wide v0, p0, Lcom/android/server/pm/KeySetHandle;->mId:J

    return-wide v0
.end method

.method protected getRefCountLPr()I
    .registers 2

    .line 43
    iget v0, p0, Lcom/android/server/pm/KeySetHandle;->mRefCount:I

    return v0
.end method

.method protected incrRefCountLPw()V
    .registers 2

    .line 55
    iget v0, p0, Lcom/android/server/pm/KeySetHandle;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/pm/KeySetHandle;->mRefCount:I

    .line 56
    return-void
.end method

.method protected setRefCountLPw(I)V
    .registers 2
    .param p1, "newCount"    # I

    .line 50
    iput p1, p0, Lcom/android/server/pm/KeySetHandle;->mRefCount:I

    .line 51
    return-void
.end method
