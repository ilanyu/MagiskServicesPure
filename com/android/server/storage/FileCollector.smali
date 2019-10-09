.class public Lcom/android/server/storage/FileCollector;
.super Ljava/lang/Object;
.source "FileCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/storage/FileCollector$MeasurementResult;,
        Lcom/android/server/storage/FileCollector$FileTypes;
    }
.end annotation


# static fields
.field private static final AUDIO:I = 0x2

.field private static final EXTENSION_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final IMAGES:I = 0x0

.field private static final UNRECOGNIZED:I = -0x1

.field private static final VIDEO:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 52
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    .line 55
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string v1, "aac"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string v1, "amr"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string v1, "awb"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "snd"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string v1, "flac"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "mp3"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "mpga"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "mpega"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "mp2"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "m4a"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string v1, "aif"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string v1, "aiff"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string v1, "aifc"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string v1, "gsm"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "mka"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "m3u"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "wma"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "wax"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "ra"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "rm"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "ram"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "pls"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "sd2"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "wav"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "ogg"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "oga"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string v1, "3gpp"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string v1, "3gp"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string v1, "3gpp2"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string v1, "3g2"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string v1, "avi"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string v1, "dl"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string v1, "dif"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string v1, "dv"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string v1, "fli"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "m4v"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "ts"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "mpeg"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "mpg"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "mpe"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "mp4"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "vob"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "qt"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "mov"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "mxu"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "webm"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "lsf"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "lsx"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "mkv"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "mng"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string v1, "asf"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string v1, "asx"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "wm"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "wmv"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "wmx"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "wvx"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "movie"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "wrf"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string v1, "bmp"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string v1, "gif"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "jpg"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "jpeg"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "jpe"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "pcx"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "png"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "svg"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "svgz"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "tiff"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "tif"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "wbmp"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "webp"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string v1, "dng"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string v1, "cr2"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "ras"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string v1, "art"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "jng"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "nef"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "nrw"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "orf"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "rw2"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "pef"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "psd"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "pnm"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "pbm"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "pgm"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "ppm"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "srw"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string v1, "arw"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "rgb"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "xbm"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "xpm"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    const-string/jumbo v1, "xwd"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static collectFiles(Ljava/io/File;Lcom/android/server/storage/FileCollector$MeasurementResult;)Lcom/android/server/storage/FileCollector$MeasurementResult;
    .registers 7
    .param p0, "file"    # Ljava/io/File;
    .param p1, "result"    # Lcom/android/server/storage/FileCollector$MeasurementResult;

    .line 224
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 226
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_7

    .line 227
    return-object p1

    .line 230
    :cond_7
    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_1f

    aget-object v3, v0, v2

    .line 231
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 233
    :try_start_13
    invoke-static {v3, p1}, Lcom/android/server/storage/FileCollector;->collectFiles(Ljava/io/File;Lcom/android/server/storage/FileCollector$MeasurementResult;)Lcom/android/server/storage/FileCollector$MeasurementResult;
    :try_end_16
    .catch Ljava/lang/StackOverflowError; {:try_start_13 .. :try_end_16} :catch_17

    .line 236
    goto :goto_1c

    .line 234
    :catch_17
    move-exception v1

    .line 235
    .local v1, "e":Ljava/lang/StackOverflowError;
    return-object p1

    .line 238
    .end local v1    # "e":Ljava/lang/StackOverflowError;
    :cond_19
    invoke-static {p1, v3}, Lcom/android/server/storage/FileCollector;->handleFile(Lcom/android/server/storage/FileCollector$MeasurementResult;Ljava/io/File;)V

    .line 230
    .end local v3    # "f":Ljava/io/File;
    :goto_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 242
    :cond_1f
    return-object p1
.end method

.method private static getExtensionForFile(Ljava/io/File;)Ljava/lang/String;
    .registers 4
    .param p0, "file"    # Ljava/io/File;

    .line 264
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "fileName":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 266
    .local v1, "index":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_10

    .line 267
    const-string v2, ""

    return-object v2

    .line 269
    :cond_10
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getMeasurementResult(Landroid/content/Context;)Lcom/android/server/storage/FileCollector$MeasurementResult;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .line 166
    new-instance v0, Lcom/android/server/storage/FileCollector$MeasurementResult;

    invoke-direct {v0}, Lcom/android/server/storage/FileCollector$MeasurementResult;-><init>()V

    .line 167
    .local v0, "result":Lcom/android/server/storage/FileCollector$MeasurementResult;
    const-string/jumbo v1, "storagestats"

    .line 168
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/StorageStatsManager;

    .line 169
    .local v1, "ssm":Landroid/app/usage/StorageStatsManager;
    const/4 v2, 0x0

    .line 171
    .local v2, "stats":Landroid/app/usage/ExternalStorageStats;
    :try_start_f
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 172
    invoke-virtual {v1, v3, v4}, Landroid/app/usage/StorageStatsManager;->queryExternalStatsForUser(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/ExternalStorageStats;

    move-result-object v3

    move-object v2, v3

    .line 175
    invoke-virtual {v2}, Landroid/app/usage/ExternalStorageStats;->getImageBytes()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/storage/FileCollector$MeasurementResult;->imagesSize:J

    .line 176
    invoke-virtual {v2}, Landroid/app/usage/ExternalStorageStats;->getVideoBytes()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/storage/FileCollector$MeasurementResult;->videosSize:J

    .line 177
    invoke-virtual {v2}, Landroid/app/usage/ExternalStorageStats;->getAudioBytes()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/storage/FileCollector$MeasurementResult;->audioSize:J

    .line 178
    nop

    .line 179
    invoke-virtual {v2}, Landroid/app/usage/ExternalStorageStats;->getTotalBytes()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/android/server/storage/FileCollector$MeasurementResult;->imagesSize:J

    sub-long/2addr v3, v5

    iget-wide v5, v0, Lcom/android/server/storage/FileCollector$MeasurementResult;->videosSize:J

    sub-long/2addr v3, v5

    iget-wide v5, v0, Lcom/android/server/storage/FileCollector$MeasurementResult;->audioSize:J

    sub-long/2addr v3, v5

    iput-wide v3, v0, Lcom/android/server/storage/FileCollector$MeasurementResult;->miscSize:J
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_40} :catch_42

    .line 185
    nop

    .line 187
    return-object v0

    .line 183
    :catch_42
    move-exception v3

    .line 184
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Could not query storage"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static getMeasurementResult(Ljava/io/File;)Lcom/android/server/storage/FileCollector$MeasurementResult;
    .registers 3
    .param p0, "path"    # Ljava/io/File;

    .line 156
    invoke-static {p0}, Landroid/os/storage/StorageManager;->maybeTranslateEmulatedPathToInternal(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/android/server/storage/FileCollector$MeasurementResult;

    invoke-direct {v1}, Lcom/android/server/storage/FileCollector$MeasurementResult;-><init>()V

    invoke-static {v0, v1}, Lcom/android/server/storage/FileCollector;->collectFiles(Ljava/io/File;Lcom/android/server/storage/FileCollector$MeasurementResult;)Lcom/android/server/storage/FileCollector$MeasurementResult;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemSize(Landroid/content/Context;)J
    .registers 13
    .param p0, "context"    # Landroid/content/Context;

    .line 197
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 198
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v1

    .line 200
    .local v1, "primaryVolume":Landroid/os/storage/VolumeInfo;
    const-string/jumbo v2, "storage"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 201
    .local v2, "sm":Landroid/os/storage/StorageManager;
    invoke-virtual {v2, v1}, Landroid/os/storage/StorageManager;->findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v3

    .line 202
    .local v3, "shared":Landroid/os/storage/VolumeInfo;
    const-wide/16 v4, 0x0

    if-nez v3, :cond_1a

    .line 203
    return-wide v4

    .line 207
    :cond_1a
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v6

    .line 208
    .local v6, "sharedPath":Ljava/io/File;
    if-nez v6, :cond_21

    .line 209
    return-wide v4

    .line 212
    :cond_21
    invoke-virtual {v6}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v7

    .line 213
    .local v7, "sharedDataSize":J
    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getPrimaryStorageSize()J

    move-result-wide v9

    sub-long/2addr v9, v7

    .line 216
    .local v9, "systemSize":J
    cmp-long v11, v9, v4

    if-gtz v11, :cond_2f

    .line 217
    return-wide v4

    .line 220
    :cond_2f
    return-wide v9
.end method

.method private static handleFile(Lcom/android/server/storage/FileCollector$MeasurementResult;Ljava/io/File;)V
    .registers 7
    .param p0, "result"    # Lcom/android/server/storage/FileCollector$MeasurementResult;
    .param p1, "f"    # Ljava/io/File;

    .line 246
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 247
    .local v0, "fileSize":J
    sget-object v2, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    invoke-static {p1}, Lcom/android/server/storage/FileCollector;->getExtensionForFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 248
    .local v2, "fileType":I
    packed-switch v2, :pswitch_data_36

    .line 259
    iget-wide v3, p0, Lcom/android/server/storage/FileCollector$MeasurementResult;->miscSize:J

    add-long/2addr v3, v0

    iput-wide v3, p0, Lcom/android/server/storage/FileCollector$MeasurementResult;->miscSize:J

    goto :goto_34

    .line 250
    :pswitch_22
    iget-wide v3, p0, Lcom/android/server/storage/FileCollector$MeasurementResult;->audioSize:J

    add-long/2addr v3, v0

    iput-wide v3, p0, Lcom/android/server/storage/FileCollector$MeasurementResult;->audioSize:J

    .line 251
    goto :goto_34

    .line 253
    :pswitch_28
    iget-wide v3, p0, Lcom/android/server/storage/FileCollector$MeasurementResult;->videosSize:J

    add-long/2addr v3, v0

    iput-wide v3, p0, Lcom/android/server/storage/FileCollector$MeasurementResult;->videosSize:J

    .line 254
    goto :goto_34

    .line 256
    :pswitch_2e
    iget-wide v3, p0, Lcom/android/server/storage/FileCollector$MeasurementResult;->imagesSize:J

    add-long/2addr v3, v0

    iput-wide v3, p0, Lcom/android/server/storage/FileCollector$MeasurementResult;->imagesSize:J

    .line 257
    nop

    .line 261
    :goto_34
    return-void

    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_28
        :pswitch_22
    .end packed-switch
.end method
