.class public final synthetic Lcom/android/server/pm/-$$Lambda$Installer$SebeftIfAJ7KsTmM0tju6PfW4Pc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/pm/Installer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/Installer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$Installer$SebeftIfAJ7KsTmM0tju6PfW4Pc;->f$0:Lcom/android/server/pm/Installer;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$Installer$SebeftIfAJ7KsTmM0tju6PfW4Pc;->f$0:Lcom/android/server/pm/Installer;

    invoke-static {v0}, Lcom/android/server/pm/Installer;->lambda$connect$0(Lcom/android/server/pm/Installer;)V

    return-void
.end method
