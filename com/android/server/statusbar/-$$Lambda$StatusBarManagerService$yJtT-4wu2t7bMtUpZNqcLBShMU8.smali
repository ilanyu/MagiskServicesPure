.class public final synthetic Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$yJtT-4wu2t7bMtUpZNqcLBShMU8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/statusbar/StatusBarManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$yJtT-4wu2t7bMtUpZNqcLBShMU8;->f$0:Lcom/android/server/statusbar/StatusBarManagerService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$yJtT-4wu2t7bMtUpZNqcLBShMU8;->f$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->lambda$notifyBarAttachChanged$0(Lcom/android/server/statusbar/StatusBarManagerService;)V

    return-void
.end method
