.class public final synthetic Landroid/net/util/-$$Lambda$PacketReader$-RaxjKALPlkYUks1uxbxyNPwpGI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/net/util/PacketReader;


# direct methods
.method public synthetic constructor <init>(Landroid/net/util/PacketReader;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/util/-$$Lambda$PacketReader$-RaxjKALPlkYUks1uxbxyNPwpGI;->f$0:Landroid/net/util/PacketReader;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/net/util/-$$Lambda$PacketReader$-RaxjKALPlkYUks1uxbxyNPwpGI;->f$0:Landroid/net/util/PacketReader;

    invoke-static {v0}, Landroid/net/util/PacketReader;->lambda$stop$1(Landroid/net/util/PacketReader;)V

    return-void
.end method
