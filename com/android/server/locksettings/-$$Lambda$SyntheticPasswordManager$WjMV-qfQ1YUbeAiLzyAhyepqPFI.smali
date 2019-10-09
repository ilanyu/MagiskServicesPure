.class public final synthetic Lcom/android/server/locksettings/-$$Lambda$SyntheticPasswordManager$WjMV-qfQ1YUbeAiLzyAhyepqPFI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/weaver/V1_0/IWeaver$getConfigCallback;


# instance fields
.field private final synthetic f$0:Lcom/android/server/locksettings/SyntheticPasswordManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/locksettings/SyntheticPasswordManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/-$$Lambda$SyntheticPasswordManager$WjMV-qfQ1YUbeAiLzyAhyepqPFI;->f$0:Lcom/android/server/locksettings/SyntheticPasswordManager;

    return-void
.end method


# virtual methods
.method public final onValues(ILandroid/hardware/weaver/V1_0/WeaverConfig;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/locksettings/-$$Lambda$SyntheticPasswordManager$WjMV-qfQ1YUbeAiLzyAhyepqPFI;->f$0:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-static {v0, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->lambda$initWeaverService$0(Lcom/android/server/locksettings/SyntheticPasswordManager;ILandroid/hardware/weaver/V1_0/WeaverConfig;)V

    return-void
.end method
