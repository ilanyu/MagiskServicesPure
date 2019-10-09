.class public final synthetic Lcom/android/server/connectivity/-$$Lambda$Tethering$5JkghhOVq1MW7iK03DMZUSuLdFM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/connectivity/Tethering;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/-$$Lambda$Tethering$5JkghhOVq1MW7iK03DMZUSuLdFM;->f$0:Lcom/android/server/connectivity/Tethering;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/connectivity/-$$Lambda$Tethering$5JkghhOVq1MW7iK03DMZUSuLdFM;->f$0:Lcom/android/server/connectivity/Tethering;

    check-cast p1, Landroid/content/Intent;

    invoke-static {v0, p1}, Lcom/android/server/connectivity/Tethering;->lambda$new$0(Lcom/android/server/connectivity/Tethering;Landroid/content/Intent;)V

    return-void
.end method
