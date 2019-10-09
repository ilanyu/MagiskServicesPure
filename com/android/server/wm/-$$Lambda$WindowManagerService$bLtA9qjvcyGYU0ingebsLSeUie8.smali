.class public final synthetic Lcom/android/server/wm/-$$Lambda$WindowManagerService$bLtA9qjvcyGYU0ingebsLSeUie8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$bLtA9qjvcyGYU0ingebsLSeUie8;->f$0:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$bLtA9qjvcyGYU0ingebsLSeUie8;->f$0:Ljava/io/PrintWriter;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, p1}, Lcom/android/server/wm/WindowManagerService;->lambda$doDump$6(Ljava/io/PrintWriter;Lcom/android/server/wm/WindowState;)V

    return-void
.end method
