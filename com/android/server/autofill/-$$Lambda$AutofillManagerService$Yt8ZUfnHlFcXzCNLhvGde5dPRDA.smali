.class public final synthetic Lcom/android/server/autofill/-$$Lambda$AutofillManagerService$Yt8ZUfnHlFcXzCNLhvGde5dPRDA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/UserManagerInternal$UserRestrictionsListener;


# instance fields
.field private final synthetic f$0:Lcom/android/server/autofill/AutofillManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/AutofillManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/-$$Lambda$AutofillManagerService$Yt8ZUfnHlFcXzCNLhvGde5dPRDA;->f$0:Lcom/android/server/autofill/AutofillManagerService;

    return-void
.end method


# virtual methods
.method public final onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/autofill/-$$Lambda$AutofillManagerService$Yt8ZUfnHlFcXzCNLhvGde5dPRDA;->f$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/autofill/AutofillManagerService;->lambda$new$0(Lcom/android/server/autofill/AutofillManagerService;ILandroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method
