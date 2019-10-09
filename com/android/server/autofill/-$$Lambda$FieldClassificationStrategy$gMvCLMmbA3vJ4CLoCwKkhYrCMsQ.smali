.class public final synthetic Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$gMvCLMmbA3vJ4CLoCwKkhYrCMsQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/autofill/FieldClassificationStrategy$Command;


# instance fields
.field private final synthetic f$0:Landroid/os/RemoteCallback;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Landroid/os/Bundle;

.field private final synthetic f$3:Ljava/util/List;

.field private final synthetic f$4:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/os/RemoteCallback;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;[Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$gMvCLMmbA3vJ4CLoCwKkhYrCMsQ;->f$0:Landroid/os/RemoteCallback;

    iput-object p2, p0, Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$gMvCLMmbA3vJ4CLoCwKkhYrCMsQ;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$gMvCLMmbA3vJ4CLoCwKkhYrCMsQ;->f$2:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$gMvCLMmbA3vJ4CLoCwKkhYrCMsQ;->f$3:Ljava/util/List;

    iput-object p5, p0, Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$gMvCLMmbA3vJ4CLoCwKkhYrCMsQ;->f$4:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run(Landroid/service/autofill/IAutofillFieldClassificationService;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$gMvCLMmbA3vJ4CLoCwKkhYrCMsQ;->f$0:Landroid/os/RemoteCallback;

    iget-object v1, p0, Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$gMvCLMmbA3vJ4CLoCwKkhYrCMsQ;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$gMvCLMmbA3vJ4CLoCwKkhYrCMsQ;->f$2:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$gMvCLMmbA3vJ4CLoCwKkhYrCMsQ;->f$3:Ljava/util/List;

    iget-object v4, p0, Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$gMvCLMmbA3vJ4CLoCwKkhYrCMsQ;->f$4:[Ljava/lang/String;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/server/autofill/FieldClassificationStrategy;->lambda$getScores$2(Landroid/os/RemoteCallback;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;[Ljava/lang/String;Landroid/service/autofill/IAutofillFieldClassificationService;)V

    return-void
.end method
