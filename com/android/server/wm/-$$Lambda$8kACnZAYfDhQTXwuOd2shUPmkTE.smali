.class public final synthetic Lcom/android/server/wm/-$$Lambda$8kACnZAYfDhQTXwuOd2shUPmkTE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/WindowTracing;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowTracing;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$8kACnZAYfDhQTXwuOd2shUPmkTE;->f$0:Lcom/android/server/wm/WindowTracing;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$8kACnZAYfDhQTXwuOd2shUPmkTE;->f$0:Lcom/android/server/wm/WindowTracing;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowTracing;->loop()V

    return-void
.end method
