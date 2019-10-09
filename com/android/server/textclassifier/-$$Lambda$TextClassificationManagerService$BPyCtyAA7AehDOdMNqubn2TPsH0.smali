.class public final synthetic Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$BPyCtyAA7AehDOdMNqubn2TPsH0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

.field private final synthetic f$1:Landroid/view/textclassifier/TextClassificationContext;

.field private final synthetic f$2:Landroid/view/textclassifier/TextClassificationSessionId;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/textclassifier/TextClassificationManagerService;Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$BPyCtyAA7AehDOdMNqubn2TPsH0;->f$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    iput-object p2, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$BPyCtyAA7AehDOdMNqubn2TPsH0;->f$1:Landroid/view/textclassifier/TextClassificationContext;

    iput-object p3, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$BPyCtyAA7AehDOdMNqubn2TPsH0;->f$2:Landroid/view/textclassifier/TextClassificationSessionId;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$BPyCtyAA7AehDOdMNqubn2TPsH0;->f$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    iget-object v1, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$BPyCtyAA7AehDOdMNqubn2TPsH0;->f$1:Landroid/view/textclassifier/TextClassificationContext;

    iget-object v2, p0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$BPyCtyAA7AehDOdMNqubn2TPsH0;->f$2:Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-static {v0, v1, v2}, Lcom/android/server/textclassifier/TextClassificationManagerService;->lambda$onCreateTextClassificationSession$4(Lcom/android/server/textclassifier/TextClassificationManagerService;Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V

    return-void
.end method
