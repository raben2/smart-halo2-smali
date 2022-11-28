.class public final Lcom/google/api/Monitoring$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Monitoring.java"

# interfaces
.implements Lcom/google/api/MonitoringOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Monitoring;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Monitoring;",
        "Lcom/google/api/Monitoring$Builder;",
        ">;",
        "Lcom/google/api/MonitoringOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1253
    invoke-static {}, Lcom/google/api/Monitoring;->access$1000()Lcom/google/api/Monitoring;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/Monitoring$1;)V
    .locals 0

    .line 1246
    invoke-direct {p0}, Lcom/google/api/Monitoring$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllConsumerDestinations(Ljava/lang/Iterable;)Lcom/google/api/Monitoring$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/Monitoring$MonitoringDestination;",
            ">;)",
            "Lcom/google/api/Monitoring$Builder;"
        }
    .end annotation

    .line 1638
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1639
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-static {v0, p1}, Lcom/google/api/Monitoring;->access$2000(Lcom/google/api/Monitoring;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllProducerDestinations(Ljava/lang/Iterable;)Lcom/google/api/Monitoring$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/Monitoring$MonitoringDestination;",
            ">;)",
            "Lcom/google/api/Monitoring$Builder;"
        }
    .end annotation

    .line 1428
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1429
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-static {v0, p1}, Lcom/google/api/Monitoring;->access$1400(Lcom/google/api/Monitoring;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addConsumerDestinations(ILcom/google/api/Monitoring$MonitoringDestination$Builder;)Lcom/google/api/Monitoring$Builder;
    .locals 1

    .line 1619
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1620
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    .line 1621
    invoke-virtual {p2}, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/Monitoring$MonitoringDestination;

    .line 1620
    invoke-static {v0, p1, p2}, Lcom/google/api/Monitoring;->access$1900(Lcom/google/api/Monitoring;ILcom/google/api/Monitoring$MonitoringDestination;)V

    return-object p0
.end method

.method public addConsumerDestinations(ILcom/google/api/Monitoring$MonitoringDestination;)Lcom/google/api/Monitoring$Builder;
    .locals 1

    .line 1583
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1584
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-static {v0, p1, p2}, Lcom/google/api/Monitoring;->access$1900(Lcom/google/api/Monitoring;ILcom/google/api/Monitoring$MonitoringDestination;)V

    return-object p0
.end method

.method public addConsumerDestinations(Lcom/google/api/Monitoring$MonitoringDestination$Builder;)Lcom/google/api/Monitoring$Builder;
    .locals 1

    .line 1601
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1602
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-virtual {p1}, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-static {v0, p1}, Lcom/google/api/Monitoring;->access$1800(Lcom/google/api/Monitoring;Lcom/google/api/Monitoring$MonitoringDestination;)V

    return-object p0
.end method

.method public addConsumerDestinations(Lcom/google/api/Monitoring$MonitoringDestination;)Lcom/google/api/Monitoring$Builder;
    .locals 1

    .line 1565
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1566
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-static {v0, p1}, Lcom/google/api/Monitoring;->access$1800(Lcom/google/api/Monitoring;Lcom/google/api/Monitoring$MonitoringDestination;)V

    return-object p0
.end method

.method public addProducerDestinations(ILcom/google/api/Monitoring$MonitoringDestination$Builder;)Lcom/google/api/Monitoring$Builder;
    .locals 1

    .line 1409
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1410
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    .line 1411
    invoke-virtual {p2}, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/Monitoring$MonitoringDestination;

    .line 1410
    invoke-static {v0, p1, p2}, Lcom/google/api/Monitoring;->access$1300(Lcom/google/api/Monitoring;ILcom/google/api/Monitoring$MonitoringDestination;)V

    return-object p0
.end method

.method public addProducerDestinations(ILcom/google/api/Monitoring$MonitoringDestination;)Lcom/google/api/Monitoring$Builder;
    .locals 1

    .line 1373
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1374
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-static {v0, p1, p2}, Lcom/google/api/Monitoring;->access$1300(Lcom/google/api/Monitoring;ILcom/google/api/Monitoring$MonitoringDestination;)V

    return-object p0
.end method

.method public addProducerDestinations(Lcom/google/api/Monitoring$MonitoringDestination$Builder;)Lcom/google/api/Monitoring$Builder;
    .locals 1

    .line 1391
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1392
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-virtual {p1}, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-static {v0, p1}, Lcom/google/api/Monitoring;->access$1200(Lcom/google/api/Monitoring;Lcom/google/api/Monitoring$MonitoringDestination;)V

    return-object p0
.end method

.method public addProducerDestinations(Lcom/google/api/Monitoring$MonitoringDestination;)Lcom/google/api/Monitoring$Builder;
    .locals 1

    .line 1355
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1356
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-static {v0, p1}, Lcom/google/api/Monitoring;->access$1200(Lcom/google/api/Monitoring;Lcom/google/api/Monitoring$MonitoringDestination;)V

    return-object p0
.end method

.method public clearConsumerDestinations()Lcom/google/api/Monitoring$Builder;
    .locals 1

    .line 1655
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1656
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-static {v0}, Lcom/google/api/Monitoring;->access$2100(Lcom/google/api/Monitoring;)V

    return-object p0
.end method

.method public clearProducerDestinations()Lcom/google/api/Monitoring$Builder;
    .locals 1

    .line 1445
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1446
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-static {v0}, Lcom/google/api/Monitoring;->access$1500(Lcom/google/api/Monitoring;)V

    return-object p0
.end method

.method public getConsumerDestinations(I)Lcom/google/api/Monitoring$MonitoringDestination;
    .locals 1

    .line 1513
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-virtual {v0, p1}, Lcom/google/api/Monitoring;->getConsumerDestinations(I)Lcom/google/api/Monitoring$MonitoringDestination;

    move-result-object p1

    return-object p1
.end method

.method public getConsumerDestinationsCount()I
    .locals 1

    .line 1498
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-virtual {v0}, Lcom/google/api/Monitoring;->getConsumerDestinationsCount()I

    move-result v0

    return v0
.end method

.method public getConsumerDestinationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/Monitoring$MonitoringDestination;",
            ">;"
        }
    .end annotation

    .line 1481
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    .line 1482
    invoke-virtual {v0}, Lcom/google/api/Monitoring;->getConsumerDestinationsList()Ljava/util/List;

    move-result-object v0

    .line 1481
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProducerDestinations(I)Lcom/google/api/Monitoring$MonitoringDestination;
    .locals 1

    .line 1303
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-virtual {v0, p1}, Lcom/google/api/Monitoring;->getProducerDestinations(I)Lcom/google/api/Monitoring$MonitoringDestination;

    move-result-object p1

    return-object p1
.end method

.method public getProducerDestinationsCount()I
    .locals 1

    .line 1288
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-virtual {v0}, Lcom/google/api/Monitoring;->getProducerDestinationsCount()I

    move-result v0

    return v0
.end method

.method public getProducerDestinationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/Monitoring$MonitoringDestination;",
            ">;"
        }
    .end annotation

    .line 1271
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    .line 1272
    invoke-virtual {v0}, Lcom/google/api/Monitoring;->getProducerDestinationsList()Ljava/util/List;

    move-result-object v0

    .line 1271
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeConsumerDestinations(I)Lcom/google/api/Monitoring$Builder;
    .locals 1

    .line 1672
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1673
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-static {v0, p1}, Lcom/google/api/Monitoring;->access$2200(Lcom/google/api/Monitoring;I)V

    return-object p0
.end method

.method public removeProducerDestinations(I)Lcom/google/api/Monitoring$Builder;
    .locals 1

    .line 1462
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1463
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-static {v0, p1}, Lcom/google/api/Monitoring;->access$1600(Lcom/google/api/Monitoring;I)V

    return-object p0
.end method

.method public setConsumerDestinations(ILcom/google/api/Monitoring$MonitoringDestination$Builder;)Lcom/google/api/Monitoring$Builder;
    .locals 1

    .line 1547
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1548
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    .line 1549
    invoke-virtual {p2}, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/Monitoring$MonitoringDestination;

    .line 1548
    invoke-static {v0, p1, p2}, Lcom/google/api/Monitoring;->access$1700(Lcom/google/api/Monitoring;ILcom/google/api/Monitoring$MonitoringDestination;)V

    return-object p0
.end method

.method public setConsumerDestinations(ILcom/google/api/Monitoring$MonitoringDestination;)Lcom/google/api/Monitoring$Builder;
    .locals 1

    .line 1529
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1530
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-static {v0, p1, p2}, Lcom/google/api/Monitoring;->access$1700(Lcom/google/api/Monitoring;ILcom/google/api/Monitoring$MonitoringDestination;)V

    return-object p0
.end method

.method public setProducerDestinations(ILcom/google/api/Monitoring$MonitoringDestination$Builder;)Lcom/google/api/Monitoring$Builder;
    .locals 1

    .line 1337
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1338
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    .line 1339
    invoke-virtual {p2}, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/Monitoring$MonitoringDestination;

    .line 1338
    invoke-static {v0, p1, p2}, Lcom/google/api/Monitoring;->access$1100(Lcom/google/api/Monitoring;ILcom/google/api/Monitoring$MonitoringDestination;)V

    return-object p0
.end method

.method public setProducerDestinations(ILcom/google/api/Monitoring$MonitoringDestination;)Lcom/google/api/Monitoring$Builder;
    .locals 1

    .line 1319
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1320
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-static {v0, p1, p2}, Lcom/google/api/Monitoring;->access$1100(Lcom/google/api/Monitoring;ILcom/google/api/Monitoring$MonitoringDestination;)V

    return-object p0
.end method
