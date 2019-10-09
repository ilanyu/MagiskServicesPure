.class final Lcom/android/server/wm/MiuiGestureController$GestureHelperDeathRecipient;
.super Ljava/lang/Object;
.source "MiuiGestureController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MiuiGestureController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GestureHelperDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MiuiGestureController;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/MiuiGestureController;)V
    .registers 2

    .line 348
    iput-object p1, p0, Lcom/android/server/wm/MiuiGestureController$GestureHelperDeathRecipient;->this$0:Lcom/android/server/wm/MiuiGestureController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/MiuiGestureController;Lcom/android/server/wm/MiuiGestureController$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/wm/MiuiGestureController;
    .param p2, "x1"    # Lcom/android/server/wm/MiuiGestureController$1;

    .line 348
    invoke-direct {p0, p1}, Lcom/android/server/wm/MiuiGestureController$GestureHelperDeathRecipient;-><init>(Lcom/android/server/wm/MiuiGestureController;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .line 351
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController$GestureHelperDeathRecipient;->this$0:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/MiuiGestureController;->unregisterMiuiGestureControlHelper(Lcom/android/server/wm/MiuiGestureController$GestureHelperDeathRecipient;)V

    .line 352
    return-void
.end method
