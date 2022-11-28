.class public final Lcom/google/api/Logging$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Logging.java"

# interfaces
.implements Lcom/google/api/LoggingOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Logging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Logging;",
        "Lcom/google/api/Logging$Builder;",
        ">;",
        "Lcom/google/api/LoggingOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1237
    invoke-static {}, Lcom/google/api/Logging;->access$1000()Lcom/google/api/Logging;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/Logging$1;)V
    .locals 0

    .line 1230
    invoke-direct {p0}, Lcom/google/api/Logging$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllConsumerDestinations(Ljava/lang/Iterable;)Lcom/google/api/Logging$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/Logging$LoggingDestination;",
            ">;)",
            "Lcom/google/api/Logging$Builder;"
        }
    .end annotation

    .line 1578
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1579
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-static {v0, p1}, Lcom/google/api/Logging;->access$2000(Lcom/google/api/Logging;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllProducerDestinations(Ljava/lang/Iterable;)Lcom/google/api/Logging$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/Logging$LoggingDestination;",
            ">;)",
            "Lcom/google/api/Logging$Builder;"
        }
    .end annotation

    .line 1392
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1393
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-static {v0, p1}, Lcom/google/api/Logging;->access$1400(Lcom/google/api/Logging;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addConsumerDestinations(ILcom/google/api/Logging$LoggingDestination$Builder;)Lcom/google/api/Logging$Builder;
    .locals 1

    .line 1561
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1562
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    .line 1563
    invoke-virtual {p2}, Lcom/google/api/Logging$LoggingDestination$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/Logging$LoggingDestination;

    .line 1562
    invoke-static {v0, p1, p2}, Lcom/google/api/Logging;->access$1900(Lcom/google/api/Logging;ILcom/google/api/Logging$LoggingDestination;)V

    return-object p0
.end method

.method public addConsumerDestinations(ILcom/google/api/Logging$LoggingDestination;)Lcom/google/api/Logging$Builder;
    .locals 1

    .line 1529
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1530
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-static {v0, p1, p2}, Lcom/google/api/Logging;->access$1900(Lcom/google/api/Logging;ILcom/google/api/Logging$LoggingDestination;)V

    return-object p0
.end method

.method public addConsumerDestinations(Lcom/google/api/Logging$LoggingDestination$Builder;)Lcom/google/api/Logging$Builder;
    .locals 1

    .line 1545
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1546
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-virtual {p1}, Lcom/google/api/Logging$LoggingDestination$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/Logging$LoggingDestination;

    invoke-static {v0, p1}, Lcom/google/api/Logging;->access$1800(Lcom/google/api/Logging;Lcom/google/api/Logging$LoggingDestination;)V

    return-object p0
.end method

.method public addConsumerDestinations(Lcom/google/api/Logging$LoggingDestination;)Lcom/google/api/Logging$Builder;
    .locals 1

    .line 1513
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1514
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-static {v0, p1}, Lcom/google/api/Logging;->access$1800(Lcom/google/api/Logging;Lcom/google/api/Logging$LoggingDestination;)V

    return-object p0
.end method

.method public addProducerDestinations(ILcom/google/api/Logging$LoggingDestination$Builder;)Lcom/google/api/Logging$Builder;
    .locals 1

    .line 1375
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1376
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    .line 1377
    invoke-virtual {p2}, Lcom/google/api/Logging$LoggingDestination$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/Logging$LoggingDestination;

    .line 1376
    invoke-static {v0, p1, p2}, Lcom/google/api/Logging;->access$1300(Lcom/google/api/Logging;ILcom/google/api/Logging$LoggingDestination;)V

    return-object p0
.end method

.method public addProducerDestinations(ILcom/google/api/Logging$LoggingDestination;)Lcom/google/api/Logging$Builder;
    .locals 1

    .line 1343
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1344
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-static {v0, p1, p2}, Lcom/google/api/Logging;->access$1300(Lcom/google/api/Logging;ILcom/google/api/Logging$LoggingDestination;)V

    return-object p0
.end method

.method public addProducerDestinations(Lcom/google/api/Logging$LoggingDestination$Builder;)Lcom/google/api/Logging$Builder;
    .locals 1

    .line 1359
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1360
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-virtual {p1}, Lcom/google/api/Logging$LoggingDestination$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/Logging$LoggingDestination;

    invoke-static {v0, p1}, Lcom/google/api/Logging;->access$1200(Lcom/google/api/Logging;Lcom/google/api/Logging$LoggingDestination;)V

    return-object p0
.end method

.method public addProducerDestinations(Lcom/google/api/Logging$LoggingDestination;)Lcom/google/api/Logging$Builder;
    .locals 1

    .line 1327
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1328
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-static {v0, p1}, Lcom/google/api/Logging;->access$1200(Lcom/google/api/Logging;Lcom/google/api/Logging$LoggingDestination;)V

    return-object p0
.end method

.method public clearConsumerDestinations()Lcom/google/api/Logging$Builder;
    .locals 1

    .line 1593
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1594
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-static {v0}, Lcom/google/api/Logging;->access$2100(Lcom/google/api/Logging;)V

    return-object p0
.end method

.method public clearProducerDestinations()Lcom/google/api/Logging$Builder;
    .locals 1

    .line 1407
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1408
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-static {v0}, Lcom/google/api/Logging;->access$1500(Lcom/google/api/Logging;)V

    return-object p0
.end method

.method public getConsumerDestinations(I)Lcom/google/api/Logging$LoggingDestination;
    .locals 1

    .line 1467
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-virtual {v0, p1}, Lcom/google/api/Logging;->getConsumerDestinations(I)Lcom/google/api/Logging$LoggingDestination;

    move-result-object p1

    return-object p1
.end method

.method public getConsumerDestinationsCount()I
    .locals 1

    .line 1454
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-virtual {v0}, Lcom/google/api/Logging;->getConsumerDestinationsCount()I

    move-result v0

    return v0
.end method

.method public getConsumerDestinationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/Logging$LoggingDestination;",
            ">;"
        }
    .end annotation

    .line 1439
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    .line 1440
    invoke-virtual {v0}, Lcom/google/api/Logging;->getConsumerDestinationsList()Ljava/util/List;

    move-result-object v0

    .line 1439
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProducerDestinations(I)Lcom/google/api/Logging$LoggingDestination;
    .locals 1

    .line 1281
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-virtual {v0, p1}, Lcom/google/api/Logging;->getProducerDestinations(I)Lcom/google/api/Logging$LoggingDestination;

    move-result-object p1

    return-object p1
.end method

.method public getProducerDestinationsCount()I
    .locals 1

    .line 1268
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-virtual {v0}, Lcom/google/api/Logging;->getProducerDestinationsCount()I

    move-result v0

    return v0
.end method

.method public getProducerDestinationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/Logging$LoggingDestination;",
            ">;"
        }
    .end annotation

    .line 1253
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    .line 1254
    invoke-virtual {v0}, Lcom/google/api/Logging;->getProducerDestinationsList()Ljava/util/List;

    move-result-object v0

    .line 1253
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeConsumerDestinations(I)Lcom/google/api/Logging$Builder;
    .locals 1

    .line 1608
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1609
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-static {v0, p1}, Lcom/google/api/Logging;->access$2200(Lcom/google/api/Logging;I)V

    return-object p0
.end method

.method public removeProducerDestinations(I)Lcom/google/api/Logging$Builder;
    .locals 1

    .line 1422
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1423
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-static {v0, p1}, Lcom/google/api/Logging;->access$1600(Lcom/google/api/Logging;I)V

    return-object p0
.end method

.method public setConsumerDestinations(ILcom/google/api/Logging$LoggingDestination$Builder;)Lcom/google/api/Logging$Builder;
    .locals 1

    .line 1497
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1498
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    .line 1499
    invoke-virtual {p2}, Lcom/google/api/Logging$LoggingDestination$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/Logging$LoggingDestination;

    .line 1498
    invoke-static {v0, p1, p2}, Lcom/google/api/Logging;->access$1700(Lcom/google/api/Logging;ILcom/google/api/Logging$LoggingDestination;)V

    return-object p0
.end method

.method public setConsumerDestinations(ILcom/google/api/Logging$LoggingDestination;)Lcom/google/api/Logging$Builder;
    .locals 1

    .line 1481
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1482
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-static {v0, p1, p2}, Lcom/google/api/Logging;->access$1700(Lcom/google/api/Logging;ILcom/google/api/Logging$LoggingDestination;)V

    return-object p0
.end method

.method public setProducerDestinations(ILcom/google/api/Logging$LoggingDestination$Builder;)Lcom/google/api/Logging$Builder;
    .locals 1

    .line 1311
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1312
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    .line 1313
    invoke-virtual {p2}, Lcom/google/api/Logging$LoggingDestination$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/Logging$LoggingDestination;

    .line 1312
    invoke-static {v0, p1, p2}, Lcom/google/api/Logging;->access$1100(Lcom/google/api/Logging;ILcom/google/api/Logging$LoggingDestination;)V

    return-object p0
.end method

.method public setProducerDestinations(ILcom/google/api/Logging$LoggingDestination;)Lcom/google/api/Logging$Builder;
    .locals 1

    .line 1295
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1296
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-static {v0, p1, p2}, Lcom/google/api/Logging;->access$1100(Lcom/google/api/Logging;ILcom/google/api/Logging$LoggingDestination;)V

    return-object p0
.end method
