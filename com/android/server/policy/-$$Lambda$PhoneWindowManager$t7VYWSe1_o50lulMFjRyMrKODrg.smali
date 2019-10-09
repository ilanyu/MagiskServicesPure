.class public final synthetic Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$t7VYWSe1_o50lulMFjRyMrKODrg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/InputEventReceiver$Factory;


# instance fields
.field private final synthetic f$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$t7VYWSe1_o50lulMFjRyMrKODrg;->f$0:Lcom/android/server/policy/PhoneWindowManager;

    return-void
.end method


# virtual methods
.method public final createInputEventReceiver(Landroid/view/InputChannel;Landroid/os/Looper;)Landroid/view/InputEventReceiver;
    .registers 4

    iget-object v0, p0, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$t7VYWSe1_o50lulMFjRyMrKODrg;->f$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->lambda$beginLayoutLw$2(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/InputChannel;Landroid/os/Looper;)Landroid/view/InputEventReceiver;

    move-result-object p1

    return-object p1
.end method
