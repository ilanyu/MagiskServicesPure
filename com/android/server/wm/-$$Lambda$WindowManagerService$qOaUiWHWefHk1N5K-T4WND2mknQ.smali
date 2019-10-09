.class public final synthetic Lcom/android/server/wm/-$$Lambda$WindowManagerService$qOaUiWHWefHk1N5K-T4WND2mknQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;

.field private final synthetic f$1:Lcom/android/server/input/InputManagerService;

.field private final synthetic f$2:Z

.field private final synthetic f$3:Z

.field private final synthetic f$4:Z

.field private final synthetic f$5:Lcom/android/server/policy/WindowManagerPolicy;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZLcom/android/server/policy/WindowManagerPolicy;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$qOaUiWHWefHk1N5K-T4WND2mknQ;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$qOaUiWHWefHk1N5K-T4WND2mknQ;->f$1:Lcom/android/server/input/InputManagerService;

    iput-boolean p3, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$qOaUiWHWefHk1N5K-T4WND2mknQ;->f$2:Z

    iput-boolean p4, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$qOaUiWHWefHk1N5K-T4WND2mknQ;->f$3:Z

    iput-boolean p5, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$qOaUiWHWefHk1N5K-T4WND2mknQ;->f$4:Z

    iput-object p6, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$qOaUiWHWefHk1N5K-T4WND2mknQ;->f$5:Lcom/android/server/policy/WindowManagerPolicy;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$qOaUiWHWefHk1N5K-T4WND2mknQ;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$qOaUiWHWefHk1N5K-T4WND2mknQ;->f$1:Lcom/android/server/input/InputManagerService;

    iget-boolean v2, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$qOaUiWHWefHk1N5K-T4WND2mknQ;->f$2:Z

    iget-boolean v3, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$qOaUiWHWefHk1N5K-T4WND2mknQ;->f$3:Z

    iget-boolean v4, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$qOaUiWHWefHk1N5K-T4WND2mknQ;->f$4:Z

    iget-object v5, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$qOaUiWHWefHk1N5K-T4WND2mknQ;->f$5:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->lambda$main$0(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZLcom/android/server/policy/WindowManagerPolicy;)V

    return-void
.end method
