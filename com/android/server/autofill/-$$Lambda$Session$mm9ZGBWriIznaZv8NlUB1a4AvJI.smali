.class public final synthetic Lcom/android/server/autofill/-$$Lambda$Session$mm9ZGBWriIznaZv8NlUB1a4AvJI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field private final synthetic f$0:Lcom/android/server/autofill/Session;

.field private final synthetic f$1:Landroid/util/ArraySet;

.field private final synthetic f$10:Ljava/util/ArrayList;

.field private final synthetic f$11:Ljava/util/ArrayList;

.field private final synthetic f$2:Ljava/util/ArrayList;

.field private final synthetic f$3:Ljava/util/ArrayList;

.field private final synthetic f$4:Ljava/util/ArrayList;

.field private final synthetic f$5:Ljava/util/ArrayList;

.field private final synthetic f$6:I

.field private final synthetic f$7:[Landroid/view/autofill/AutofillId;

.field private final synthetic f$8:[Ljava/lang/String;

.field private final synthetic f$9:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/Session;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I[Landroid/view/autofill/AutofillId;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/-$$Lambda$Session$mm9ZGBWriIznaZv8NlUB1a4AvJI;->f$0:Lcom/android/server/autofill/Session;

    iput-object p2, p0, Lcom/android/server/autofill/-$$Lambda$Session$mm9ZGBWriIznaZv8NlUB1a4AvJI;->f$1:Landroid/util/ArraySet;

    iput-object p3, p0, Lcom/android/server/autofill/-$$Lambda$Session$mm9ZGBWriIznaZv8NlUB1a4AvJI;->f$2:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/server/autofill/-$$Lambda$Session$mm9ZGBWriIznaZv8NlUB1a4AvJI;->f$3:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/android/server/autofill/-$$Lambda$Session$mm9ZGBWriIznaZv8NlUB1a4AvJI;->f$4:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/android/server/autofill/-$$Lambda$Session$mm9ZGBWriIznaZv8NlUB1a4AvJI;->f$5:Ljava/util/ArrayList;

    iput p7, p0, Lcom/android/server/autofill/-$$Lambda$Session$mm9ZGBWriIznaZv8NlUB1a4AvJI;->f$6:I

    iput-object p8, p0, Lcom/android/server/autofill/-$$Lambda$Session$mm9ZGBWriIznaZv8NlUB1a4AvJI;->f$7:[Landroid/view/autofill/AutofillId;

    iput-object p9, p0, Lcom/android/server/autofill/-$$Lambda$Session$mm9ZGBWriIznaZv8NlUB1a4AvJI;->f$8:[Ljava/lang/String;

    iput-object p10, p0, Lcom/android/server/autofill/-$$Lambda$Session$mm9ZGBWriIznaZv8NlUB1a4AvJI;->f$9:[Ljava/lang/String;

    iput-object p11, p0, Lcom/android/server/autofill/-$$Lambda$Session$mm9ZGBWriIznaZv8NlUB1a4AvJI;->f$10:Ljava/util/ArrayList;

    iput-object p12, p0, Lcom/android/server/autofill/-$$Lambda$Session$mm9ZGBWriIznaZv8NlUB1a4AvJI;->f$11:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .registers 15

    iget-object v0, p0, Lcom/android/server/autofill/-$$Lambda$Session$mm9ZGBWriIznaZv8NlUB1a4AvJI;->f$0:Lcom/android/server/autofill/Session;

    iget-object v1, p0, Lcom/android/server/autofill/-$$Lambda$Session$mm9ZGBWriIznaZv8NlUB1a4AvJI;->f$1:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/autofill/-$$Lambda$Session$mm9ZGBWriIznaZv8NlUB1a4AvJI;->f$2:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/autofill/-$$Lambda$Session$mm9ZGBWriIznaZv8NlUB1a4AvJI;->f$3:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/autofill/-$$Lambda$Session$mm9ZGBWriIznaZv8NlUB1a4AvJI;->f$4:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/autofill/-$$Lambda$Session$mm9ZGBWriIznaZv8NlUB1a4AvJI;->f$5:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/server/autofill/-$$Lambda$Session$mm9ZGBWriIznaZv8NlUB1a4AvJI;->f$6:I

    iget-object v7, p0, Lcom/android/server/autofill/-$$Lambda$Session$mm9ZGBWriIznaZv8NlUB1a4AvJI;->f$7:[Landroid/view/autofill/AutofillId;

    iget-object v8, p0, Lcom/android/server/autofill/-$$Lambda$Session$mm9ZGBWriIznaZv8NlUB1a4AvJI;->f$8:[Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/autofill/-$$Lambda$Session$mm9ZGBWriIznaZv8NlUB1a4AvJI;->f$9:[Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/autofill/-$$Lambda$Session$mm9ZGBWriIznaZv8NlUB1a4AvJI;->f$10:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/server/autofill/-$$Lambda$Session$mm9ZGBWriIznaZv8NlUB1a4AvJI;->f$11:Ljava/util/ArrayList;

    move-object v12, p1

    invoke-static/range {v0 .. v12}, Lcom/android/server/autofill/Session;->lambda$logFieldClassificationScoreLocked$1(Lcom/android/server/autofill/Session;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I[Landroid/view/autofill/AutofillId;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V

    return-void
.end method
