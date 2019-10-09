.class public final synthetic Lcom/android/server/-$$Lambda$InputMethodManagerService$87vt08aKi27xQgvHZ-wOyJeb5jo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/util/Printer;


# instance fields
.field private final synthetic f$0:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$InputMethodManagerService$87vt08aKi27xQgvHZ-wOyJeb5jo;->f$0:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final println(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/-$$Lambda$InputMethodManagerService$87vt08aKi27xQgvHZ-wOyJeb5jo;->f$0:Ljava/io/PrintWriter;

    invoke-static {v0, p1}, Lcom/android/server/InputMethodManagerService;->lambda$handleShellCommandListInputMethods$0(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method
