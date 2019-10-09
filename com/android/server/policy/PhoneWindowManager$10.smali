.class Lcom/android/server/policy/PhoneWindowManager$10;
.super Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 2421
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppTransitionCancelledLocked(I)V
    .registers 5
    .param p1, "transit"    # I

    .line 2431
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const-wide/16 v1, 0x0

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->handleStartTransitionForKeyguardLw(IJ)I
    invoke-static {v0, p1, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->access$3600(Lcom/android/server/policy/PhoneWindowManager;IJ)I

    .line 2432
    return-void
.end method

.method public onAppTransitionStartingLocked(ILandroid/os/IBinder;Landroid/os/IBinder;JJJ)I
    .registers 11
    .param p1, "transit"    # I
    .param p2, "openToken"    # Landroid/os/IBinder;
    .param p3, "closeToken"    # Landroid/os/IBinder;
    .param p4, "duration"    # J
    .param p6, "statusBarAnimationStartTime"    # J
    .param p8, "statusBarAnimationDuration"    # J

    .line 2426
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->handleStartTransitionForKeyguardLw(IJ)I
    invoke-static {v0, p1, p4, p5}, Lcom/android/server/policy/PhoneWindowManager;->access$3600(Lcom/android/server/policy/PhoneWindowManager;IJ)I

    move-result v0

    return v0
.end method
