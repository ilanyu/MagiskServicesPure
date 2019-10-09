.class public final synthetic Lcom/android/server/-$$Lambda$TextServicesManagerService$SpellCheckerBindGroup$WPb2Qavn5gWhsY_rCdz_4UGBTAw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$TextServicesManagerService$SpellCheckerBindGroup$WPb2Qavn5gWhsY_rCdz_4UGBTAw;->f$0:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/-$$Lambda$TextServicesManagerService$SpellCheckerBindGroup$WPb2Qavn5gWhsY_rCdz_4UGBTAw;->f$0:Landroid/os/IBinder;

    check-cast p1, Lcom/android/server/TextServicesManagerService$SessionRequest;

    invoke-static {v0, p1}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->lambda$removeListener$0(Landroid/os/IBinder;Lcom/android/server/TextServicesManagerService$SessionRequest;)Z

    move-result p1

    return p1
.end method
