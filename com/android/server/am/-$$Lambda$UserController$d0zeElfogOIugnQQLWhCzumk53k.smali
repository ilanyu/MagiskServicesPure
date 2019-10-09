.class public final synthetic Lcom/android/server/am/-$$Lambda$UserController$d0zeElfogOIugnQQLWhCzumk53k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/UserController;

.field private final synthetic f$1:Lcom/android/server/am/UserState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$UserController$d0zeElfogOIugnQQLWhCzumk53k;->f$0:Lcom/android/server/am/UserController;

    iput-object p2, p0, Lcom/android/server/am/-$$Lambda$UserController$d0zeElfogOIugnQQLWhCzumk53k;->f$1:Lcom/android/server/am/UserState;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$UserController$d0zeElfogOIugnQQLWhCzumk53k;->f$0:Lcom/android/server/am/UserController;

    iget-object v1, p0, Lcom/android/server/am/-$$Lambda$UserController$d0zeElfogOIugnQQLWhCzumk53k;->f$1:Lcom/android/server/am/UserState;

    invoke-static {v0, v1}, Lcom/android/server/am/UserController;->lambda$finishUserUnlocked$1(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;)V

    return-void
.end method
