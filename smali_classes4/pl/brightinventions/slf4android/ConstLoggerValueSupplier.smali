.class Lpl/brightinventions/slf4android/ConstLoggerValueSupplier;
.super Ljava/lang/Object;
.source "ConstLoggerValueSupplier.java"

# interfaces
.implements Lpl/brightinventions/slf4android/LoggerPatternValueSupplier;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lpl/brightinventions/slf4android/ConstLoggerValueSupplier;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public append(Lpl/brightinventions/slf4android/LogRecord;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 12
    iget-object p1, p0, Lpl/brightinventions/slf4android/ConstLoggerValueSupplier;->value:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
