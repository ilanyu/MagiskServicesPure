.class final Lcom/android/server/am/MiuiApplicationThreadManager$CallBack;
.super Ljava/lang/Object;
.source "MiuiApplicationThreadManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MiuiApplicationThreadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallBack"
.end annotation


# instance fields
.field final mMiuiApplicationThread:Lmiui/process/IMiuiApplicationThread;

.field final mPid:I

.field final synthetic this$0:Lcom/android/server/am/MiuiApplicationThreadManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/MiuiApplicationThreadManager;ILmiui/process/IMiuiApplicationThread;)V
    .registers 4
    .param p2, "pid"    # I
    .param p3, "thread"    # Lmiui/process/IMiuiApplicationThread;

    .line 47
    iput-object p1, p0, Lcom/android/server/am/MiuiApplicationThreadManager$CallBack;->this$0:Lcom/android/server/am/MiuiApplicationThreadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p2, p0, Lcom/android/server/am/MiuiApplicationThreadManager$CallBack;->mPid:I

    .line 49
    iput-object p3, p0, Lcom/android/server/am/MiuiApplicationThreadManager$CallBack;->mMiuiApplicationThread:Lmiui/process/IMiuiApplicationThread;

    .line 50
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 54
    iget-object v0, p0, Lcom/android/server/am/MiuiApplicationThreadManager$CallBack;->this$0:Lcom/android/server/am/MiuiApplicationThreadManager;

    iget v1, p0, Lcom/android/server/am/MiuiApplicationThreadManager$CallBack;->mPid:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/MiuiApplicationThreadManager;->removeMiuiApplicationThread(I)V

    .line 55
    return-void
.end method
