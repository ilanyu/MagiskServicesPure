.class public final synthetic Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$sutdDRJCfrrZR0pspDNZ8ndK1TY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$openSessionCallback;


# instance fields
.field private final synthetic f$0:Lcom/android/server/broadcastradio/hal2/Mutable;

.field private final synthetic f$1:Landroid/util/MutableInt;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/broadcastradio/hal2/Mutable;Landroid/util/MutableInt;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$sutdDRJCfrrZR0pspDNZ8ndK1TY;->f$0:Lcom/android/server/broadcastradio/hal2/Mutable;

    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$sutdDRJCfrrZR0pspDNZ8ndK1TY;->f$1:Landroid/util/MutableInt;

    return-void
.end method


# virtual methods
.method public final onValues(ILandroid/hardware/broadcastradio/V2_0/ITunerSession;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$sutdDRJCfrrZR0pspDNZ8ndK1TY;->f$0:Lcom/android/server/broadcastradio/hal2/Mutable;

    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$sutdDRJCfrrZR0pspDNZ8ndK1TY;->f$1:Landroid/util/MutableInt;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/broadcastradio/hal2/RadioModule;->lambda$openSession$2(Lcom/android/server/broadcastradio/hal2/Mutable;Landroid/util/MutableInt;ILandroid/hardware/broadcastradio/V2_0/ITunerSession;)V

    return-void
.end method
