.class final enum Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;
.super Ljava/lang/Enum;
.source "Convert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/broadcastradio/hal2/Convert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MetadataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

.field public static final enum INT:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

.field public static final enum STRING:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 291
    new-instance v0, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    const-string v1, "INT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;->INT:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    new-instance v0, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    const-string v1, "STRING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;->STRING:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    .line 290
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    sget-object v1, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;->INT:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;->STRING:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;->$VALUES:[Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 290
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 290
    const-class v0, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    return-object v0
.end method

.method public static values()[Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;
    .registers 1

    .line 290
    sget-object v0, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;->$VALUES:[Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    invoke-virtual {v0}, [Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    return-object v0
.end method
