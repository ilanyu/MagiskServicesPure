.class public final synthetic Lcom/android/server/textclassifier/-$$Lambda$6tTWS9-rW6CtxVP0xKRcg3Q5kmI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field private final synthetic f$0:Landroid/service/textclassifier/ITextClassificationCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/service/textclassifier/ITextClassificationCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/textclassifier/-$$Lambda$6tTWS9-rW6CtxVP0xKRcg3Q5kmI;->f$0:Landroid/service/textclassifier/ITextClassificationCallback;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/textclassifier/-$$Lambda$6tTWS9-rW6CtxVP0xKRcg3Q5kmI;->f$0:Landroid/service/textclassifier/ITextClassificationCallback;

    invoke-interface {v0}, Landroid/service/textclassifier/ITextClassificationCallback;->onFailure()V

    return-void
.end method
