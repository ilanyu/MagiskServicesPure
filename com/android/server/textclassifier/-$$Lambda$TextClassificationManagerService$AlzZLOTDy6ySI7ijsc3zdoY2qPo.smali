.class public final synthetic Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$AlzZLOTDy6ySI7ijsc3zdoY2qPo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$AlzZLOTDy6ySI7ijsc3zdoY2qPo;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$AlzZLOTDy6ySI7ijsc3zdoY2qPo;->f$0:Ljava/lang/String;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->lambda$logOnFailure$6(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
