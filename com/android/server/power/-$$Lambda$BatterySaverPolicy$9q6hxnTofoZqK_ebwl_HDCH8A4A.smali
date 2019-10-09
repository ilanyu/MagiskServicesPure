.class public final synthetic Lcom/android/server/power/-$$Lambda$BatterySaverPolicy$9q6hxnTofoZqK_ebwl_HDCH8A4A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/power/BatterySaverPolicy;

.field private final synthetic f$1:[Lcom/android/server/power/BatterySaverPolicy$BatterySaverPolicyListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/BatterySaverPolicy;[Lcom/android/server/power/BatterySaverPolicy$BatterySaverPolicyListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/-$$Lambda$BatterySaverPolicy$9q6hxnTofoZqK_ebwl_HDCH8A4A;->f$0:Lcom/android/server/power/BatterySaverPolicy;

    iput-object p2, p0, Lcom/android/server/power/-$$Lambda$BatterySaverPolicy$9q6hxnTofoZqK_ebwl_HDCH8A4A;->f$1:[Lcom/android/server/power/BatterySaverPolicy$BatterySaverPolicyListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/power/-$$Lambda$BatterySaverPolicy$9q6hxnTofoZqK_ebwl_HDCH8A4A;->f$0:Lcom/android/server/power/BatterySaverPolicy;

    iget-object v1, p0, Lcom/android/server/power/-$$Lambda$BatterySaverPolicy$9q6hxnTofoZqK_ebwl_HDCH8A4A;->f$1:[Lcom/android/server/power/BatterySaverPolicy$BatterySaverPolicyListener;

    invoke-static {v0, v1}, Lcom/android/server/power/BatterySaverPolicy;->lambda$refreshSettings$1(Lcom/android/server/power/BatterySaverPolicy;[Lcom/android/server/power/BatterySaverPolicy$BatterySaverPolicyListener;)V

    return-void
.end method
