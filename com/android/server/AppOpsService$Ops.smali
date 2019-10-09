.class final Lcom/android/server/AppOpsService$Ops;
.super Landroid/util/SparseArray;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Ops"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray<",
        "Lcom/android/server/AppOpsService$Op;",
        ">;"
    }
.end annotation


# instance fields
.field final isPrivileged:Z

.field final packageName:Ljava/lang/String;

.field final uidState:Lcom/android/server/AppOpsService$UidState;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/server/AppOpsService$UidState;Z)V
    .registers 4
    .param p1, "_packageName"    # Ljava/lang/String;
    .param p2, "_uidState"    # Lcom/android/server/AppOpsService$UidState;
    .param p3, "_isPrivileged"    # Z

    .line 448
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 449
    iput-object p1, p0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    .line 450
    iput-object p2, p0, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    .line 451
    iput-boolean p3, p0, Lcom/android/server/AppOpsService$Ops;->isPrivileged:Z

    .line 452
    return-void
.end method
