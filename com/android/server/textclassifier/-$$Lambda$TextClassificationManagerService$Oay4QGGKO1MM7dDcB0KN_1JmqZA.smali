.class public final synthetic Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$Oay4QGGKO1MM7dDcB0KN_1JmqZA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

.field private final synthetic f$1:Landroid/view/textclassifier/TextClassificationSessionId;

.field private final synthetic f$2:Landroid/view/textclassifier/TextSelection$Request;

.field private final synthetic f$3:Landroid/service/textclassifier/ITextSelectionCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/textclassifier/TextClassificationManagerService;Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;Landroid/service/textclassifier/ITextSelectionCallback;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$Oay4QGGKO1MM7dDcB0KN_1JmqZA;->f$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    iput-object p2, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$Oay4QGGKO1MM7dDcB0KN_1JmqZA;->f$1:Landroid/view/textclassifier/TextClassificationSessionId;

    iput-object p3, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$Oay4QGGKO1MM7dDcB0KN_1JmqZA;->f$2:Landroid/view/textclassifier/TextSelection$Request;

    iput-object p4, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$Oay4QGGKO1MM7dDcB0KN_1JmqZA;->f$3:Landroid/service/textclassifier/ITextSelectionCallback;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$Oay4QGGKO1MM7dDcB0KN_1JmqZA;->f$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    iget-object v1, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$Oay4QGGKO1MM7dDcB0KN_1JmqZA;->f$1:Landroid/view/textclassifier/TextClassificationSessionId;

    iget-object v2, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$Oay4QGGKO1MM7dDcB0KN_1JmqZA;->f$2:Landroid/view/textclassifier/TextSelection$Request;

    iget-object v3, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$Oay4QGGKO1MM7dDcB0KN_1JmqZA;->f$3:Landroid/service/textclassifier/ITextSelectionCallback;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/textclassifier/TextClassificationManagerService;->lambda$onSuggestSelection$0(Lcom/android/server/textclassifier/TextClassificationManagerService;Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;Landroid/service/textclassifier/ITextSelectionCallback;)V

    return-void
.end method
