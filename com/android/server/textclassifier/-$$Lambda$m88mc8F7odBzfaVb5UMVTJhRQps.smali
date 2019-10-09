.class public final synthetic Lcom/android/server/textclassifier/-$$Lambda$m88mc8F7odBzfaVb5UMVTJhRQps;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field private final synthetic f$0:Landroid/service/textclassifier/ITextSelectionCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/service/textclassifier/ITextSelectionCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/textclassifier/-$$Lambda$m88mc8F7odBzfaVb5UMVTJhRQps;->f$0:Landroid/service/textclassifier/ITextSelectionCallback;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/textclassifier/-$$Lambda$m88mc8F7odBzfaVb5UMVTJhRQps;->f$0:Landroid/service/textclassifier/ITextSelectionCallback;

    invoke-interface {v0}, Landroid/service/textclassifier/ITextSelectionCallback;->onFailure()V

    return-void
.end method
