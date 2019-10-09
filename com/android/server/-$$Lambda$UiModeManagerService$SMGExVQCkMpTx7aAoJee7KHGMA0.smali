.class public final synthetic Lcom/android/server/-$$Lambda$UiModeManagerService$SMGExVQCkMpTx7aAoJee7KHGMA0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$UiModeManagerService$SMGExVQCkMpTx7aAoJee7KHGMA0;->f$0:Lcom/android/server/UiModeManagerService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/-$$Lambda$UiModeManagerService$SMGExVQCkMpTx7aAoJee7KHGMA0;->f$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->lambda$onStart$0(Lcom/android/server/UiModeManagerService;)V

    return-void
.end method
