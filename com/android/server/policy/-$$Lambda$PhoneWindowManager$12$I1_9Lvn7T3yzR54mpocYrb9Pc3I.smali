.class public final synthetic Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$12$I1_9Lvn7T3yzR54mpocYrb9Pc3I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/policy/PhoneWindowManager$12;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManager$12;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$12$I1_9Lvn7T3yzR54mpocYrb9Pc3I;->f$0:Lcom/android/server/policy/PhoneWindowManager$12;

    iput-boolean p2, p0, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$12$I1_9Lvn7T3yzR54mpocYrb9Pc3I;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$12$I1_9Lvn7T3yzR54mpocYrb9Pc3I;->f$0:Lcom/android/server/policy/PhoneWindowManager$12;

    iget-boolean v1, p0, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$12$I1_9Lvn7T3yzR54mpocYrb9Pc3I;->f$1:Z

    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager$12;->lambda$onDismissSucceeded$0(Lcom/android/server/policy/PhoneWindowManager$12;Z)V

    return-void
.end method
