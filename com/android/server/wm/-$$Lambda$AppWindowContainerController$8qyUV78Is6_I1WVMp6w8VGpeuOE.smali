.class public final synthetic Lcom/android/server/wm/-$$Lambda$AppWindowContainerController$8qyUV78Is6_I1WVMp6w8VGpeuOE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$AppWindowContainerController$8qyUV78Is6_I1WVMp6w8VGpeuOE;->f$0:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$AppWindowContainerController$8qyUV78Is6_I1WVMp6w8VGpeuOE;->f$0:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    invoke-static {v0}, Lcom/android/server/wm/AppWindowContainerController;->lambda$removeStartingWindow$2(Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;)V

    return-void
.end method
