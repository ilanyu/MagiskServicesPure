.class Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;
.super Lcom/android/server/policy/WindowOrientationListener;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyOrientationListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener$UpdateRunnable;
    }
.end annotation


# instance fields
.field private mRunnableCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 1122
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 1123
    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/WindowOrientationListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 1124
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->mRunnableCache:Landroid/util/SparseArray;

    .line 1125
    return-void
.end method


# virtual methods
.method public onProposedRotationChanged(I)V
    .registers 4
    .param p1, "rotation"    # I

    .line 1150
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->mRunnableCache:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 1151
    .local v0, "r":Ljava/lang/Runnable;
    if-nez v0, :cond_16

    .line 1152
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener$UpdateRunnable;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener$UpdateRunnable;-><init>(Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;I)V

    move-object v0, v1

    .line 1153
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->mRunnableCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1155
    :cond_16
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1156
    return-void
.end method
