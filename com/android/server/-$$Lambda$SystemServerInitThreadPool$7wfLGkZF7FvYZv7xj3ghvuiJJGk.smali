.class public final synthetic Lcom/android/server/-$$Lambda$SystemServerInitThreadPool$7wfLGkZF7FvYZv7xj3ghvuiJJGk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$SystemServerInitThreadPool$7wfLGkZF7FvYZv7xj3ghvuiJJGk;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/-$$Lambda$SystemServerInitThreadPool$7wfLGkZF7FvYZv7xj3ghvuiJJGk;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/-$$Lambda$SystemServerInitThreadPool$7wfLGkZF7FvYZv7xj3ghvuiJJGk;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/-$$Lambda$SystemServerInitThreadPool$7wfLGkZF7FvYZv7xj3ghvuiJJGk;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/android/server/SystemServerInitThreadPool;->lambda$submit$0(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method
