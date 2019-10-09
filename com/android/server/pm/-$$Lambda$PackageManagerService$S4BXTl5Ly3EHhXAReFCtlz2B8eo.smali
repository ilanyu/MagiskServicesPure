.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$S4BXTl5Ly3EHhXAReFCtlz2B8eo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$S4BXTl5Ly3EHhXAReFCtlz2B8eo;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$S4BXTl5Ly3EHhXAReFCtlz2B8eo;->f$0:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$S4BXTl5Ly3EHhXAReFCtlz2B8eo(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
