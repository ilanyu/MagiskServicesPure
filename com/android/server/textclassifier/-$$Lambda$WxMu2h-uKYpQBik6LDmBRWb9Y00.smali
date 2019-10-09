.class public final synthetic Lcom/android/server/textclassifier/-$$Lambda$WxMu2h-uKYpQBik6LDmBRWb9Y00;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field private final synthetic f$0:Landroid/service/textclassifier/ITextLinksCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/service/textclassifier/ITextLinksCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/textclassifier/-$$Lambda$WxMu2h-uKYpQBik6LDmBRWb9Y00;->f$0:Landroid/service/textclassifier/ITextLinksCallback;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/textclassifier/-$$Lambda$WxMu2h-uKYpQBik6LDmBRWb9Y00;->f$0:Landroid/service/textclassifier/ITextLinksCallback;

    invoke-interface {v0}, Landroid/service/textclassifier/ITextLinksCallback;->onFailure()V

    return-void
.end method
