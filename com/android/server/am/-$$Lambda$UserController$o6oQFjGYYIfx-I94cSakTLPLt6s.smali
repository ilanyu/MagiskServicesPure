.class public final synthetic Lcom/android/server/am/-$$Lambda$UserController$o6oQFjGYYIfx-I94cSakTLPLt6s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/UserController;

.field private final synthetic f$1:I

.field private final synthetic f$2:Lcom/android/server/am/UserState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$UserController$o6oQFjGYYIfx-I94cSakTLPLt6s;->f$0:Lcom/android/server/am/UserController;

    iput p2, p0, Lcom/android/server/am/-$$Lambda$UserController$o6oQFjGYYIfx-I94cSakTLPLt6s;->f$1:I

    iput-object p3, p0, Lcom/android/server/am/-$$Lambda$UserController$o6oQFjGYYIfx-I94cSakTLPLt6s;->f$2:Lcom/android/server/am/UserState;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$UserController$o6oQFjGYYIfx-I94cSakTLPLt6s;->f$0:Lcom/android/server/am/UserController;

    iget v1, p0, Lcom/android/server/am/-$$Lambda$UserController$o6oQFjGYYIfx-I94cSakTLPLt6s;->f$1:I

    iget-object v2, p0, Lcom/android/server/am/-$$Lambda$UserController$o6oQFjGYYIfx-I94cSakTLPLt6s;->f$2:Lcom/android/server/am/UserState;

    invoke-static {v0, v1, v2}, Lcom/android/server/am/UserController;->lambda$finishUserUnlocking$0(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;)V

    return-void
.end method
