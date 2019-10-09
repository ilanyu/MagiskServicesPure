.class final Lcom/android/server/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;
.super Lcom/android/internal/textservice/ISpellCheckerServiceCallback$Stub;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ISpellCheckerServiceCallbackBinder"
.end annotation


# instance fields
.field private final mBindGroup:Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

.field private final mRequest:Lcom/android/server/TextServicesManagerService$SessionRequest;


# direct methods
.method constructor <init>(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;Lcom/android/server/TextServicesManagerService$SessionRequest;)V
    .registers 3
    .param p1, "bindGroup"    # Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    .param p2, "request"    # Lcom/android/server/TextServicesManagerService$SessionRequest;

    .line 1053
    invoke-direct {p0}, Lcom/android/internal/textservice/ISpellCheckerServiceCallback$Stub;-><init>()V

    .line 1054
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;->mBindGroup:Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    .line 1055
    iput-object p2, p0, Lcom/android/server/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;->mRequest:Lcom/android/server/TextServicesManagerService$SessionRequest;

    .line 1056
    return-void
.end method


# virtual methods
.method public onSessionCreated(Lcom/android/internal/textservice/ISpellCheckerSession;)V
    .registers 4
    .param p1, "newSession"    # Lcom/android/internal/textservice/ISpellCheckerSession;

    .line 1060
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;->mBindGroup:Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;->mRequest:Lcom/android/server/TextServicesManagerService$SessionRequest;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->onSessionCreated(Lcom/android/internal/textservice/ISpellCheckerSession;Lcom/android/server/TextServicesManagerService$SessionRequest;)V

    .line 1061
    return-void
.end method
