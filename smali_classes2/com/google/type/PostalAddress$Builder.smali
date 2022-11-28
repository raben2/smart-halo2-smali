.class public final Lcom/google/type/PostalAddress$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PostalAddress.java"

# interfaces
.implements Lcom/google/type/PostalAddressOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/type/PostalAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/type/PostalAddress;",
        "Lcom/google/type/PostalAddress$Builder;",
        ">;",
        "Lcom/google/type/PostalAddressOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1317
    invoke-static {}, Lcom/google/type/PostalAddress;->access$000()Lcom/google/type/PostalAddress;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/type/PostalAddress$1;)V
    .locals 0

    .line 1310
    invoke-direct {p0}, Lcom/google/type/PostalAddress$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAddressLines(Ljava/lang/String;)Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 2188
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 2189
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0, p1}, Lcom/google/type/PostalAddress;->access$2500(Lcom/google/type/PostalAddress;Ljava/lang/String;)V

    return-object p0
.end method

.method public addAddressLinesBytes(Lcom/google/protobuf/ByteString;)Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 2285
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 2286
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0, p1}, Lcom/google/type/PostalAddress;->access$2800(Lcom/google/type/PostalAddress;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public addAllAddressLines(Ljava/lang/Iterable;)Lcom/google/type/PostalAddress$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/type/PostalAddress$Builder;"
        }
    .end annotation

    .line 2221
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 2222
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0, p1}, Lcom/google/type/PostalAddress;->access$2600(Lcom/google/type/PostalAddress;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllRecipients(Ljava/lang/Iterable;)Lcom/google/type/PostalAddress$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/type/PostalAddress$Builder;"
        }
    .end annotation

    .line 2399
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 2400
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0, p1}, Lcom/google/type/PostalAddress;->access$3100(Lcom/google/type/PostalAddress;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addRecipients(Ljava/lang/String;)Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 2382
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 2383
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0, p1}, Lcom/google/type/PostalAddress;->access$3000(Lcom/google/type/PostalAddress;Ljava/lang/String;)V

    return-object p0
.end method

.method public addRecipientsBytes(Lcom/google/protobuf/ByteString;)Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 2431
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 2432
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0, p1}, Lcom/google/type/PostalAddress;->access$3300(Lcom/google/type/PostalAddress;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public clearAddressLines()Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 2252
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 2253
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0}, Lcom/google/type/PostalAddress;->access$2700(Lcom/google/type/PostalAddress;)V

    return-object p0
.end method

.method public clearAdministrativeArea()Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 1816
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 1817
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0}, Lcom/google/type/PostalAddress;->access$1600(Lcom/google/type/PostalAddress;)V

    return-object p0
.end method

.method public clearLanguageCode()Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 1541
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 1542
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0}, Lcom/google/type/PostalAddress;->access$700(Lcom/google/type/PostalAddress;)V

    return-object p0
.end method

.method public clearLocality()Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 1903
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 1904
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0}, Lcom/google/type/PostalAddress;->access$1900(Lcom/google/type/PostalAddress;)V

    return-object p0
.end method

.method public clearOrganization()Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 2485
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 2486
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0}, Lcom/google/type/PostalAddress;->access$3500(Lcom/google/type/PostalAddress;)V

    return-object p0
.end method

.method public clearPostalCode()Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 1631
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 1632
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0}, Lcom/google/type/PostalAddress;->access$1000(Lcom/google/type/PostalAddress;)V

    return-object p0
.end method

.method public clearRecipients()Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 2414
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 2415
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0}, Lcom/google/type/PostalAddress;->access$3200(Lcom/google/type/PostalAddress;)V

    return-object p0
.end method

.method public clearRegionCode()Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 1432
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 1433
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0}, Lcom/google/type/PostalAddress;->access$400(Lcom/google/type/PostalAddress;)V

    return-object p0
.end method

.method public clearRevision()Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 1362
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 1363
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0}, Lcom/google/type/PostalAddress;->access$200(Lcom/google/type/PostalAddress;)V

    return-object p0
.end method

.method public clearSortingCode()Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 1719
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 1720
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0}, Lcom/google/type/PostalAddress;->access$1300(Lcom/google/type/PostalAddress;)V

    return-object p0
.end method

.method public clearSublocality()Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 1979
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 1980
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0}, Lcom/google/type/PostalAddress;->access$2200(Lcom/google/type/PostalAddress;)V

    return-object p0
.end method

.method public getAddressLines(I)Ljava/lang/String;
    .locals 1

    .line 2091
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-virtual {v0, p1}, Lcom/google/type/PostalAddress;->getAddressLines(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAddressLinesBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2123
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-virtual {v0, p1}, Lcom/google/type/PostalAddress;->getAddressLinesBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getAddressLinesCount()I
    .locals 1

    .line 2060
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->getAddressLinesCount()I

    move-result v0

    return v0
.end method

.method public getAddressLinesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2029
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    .line 2030
    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->getAddressLinesList()Ljava/util/List;

    move-result-object v0

    .line 2029
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAdministrativeArea()Ljava/lang/String;
    .locals 1

    .line 1759
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->getAdministrativeArea()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdministrativeAreaBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1778
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->getAdministrativeAreaBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 1

    .line 1475
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguageCodeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1497
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->getLanguageCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLocality()Ljava/lang/String;
    .locals 1

    .line 1855
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->getLocality()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalityBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1871
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->getLocalityBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOrganization()Ljava/lang/String;
    .locals 1

    .line 2446
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->getOrganization()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrganizationBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2459
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->getOrganizationBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .line 1583
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->getPostalCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPostalCodeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1599
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->getPostalCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRecipients(I)Ljava/lang/String;
    .locals 1

    .line 2333
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-virtual {v0, p1}, Lcom/google/type/PostalAddress;->getRecipients(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRecipientsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2349
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-virtual {v0, p1}, Lcom/google/type/PostalAddress;->getRecipientsBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getRecipientsCount()I
    .locals 1

    .line 2318
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->getRecipientsCount()I

    move-result v0

    return v0
.end method

.method public getRecipientsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2303
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    .line 2304
    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->getRecipientsList()Ljava/util/List;

    move-result-object v0

    .line 2303
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRegionCode()Ljava/lang/String;
    .locals 1

    .line 1381
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->getRegionCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRegionCodeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1398
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->getRegionCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRevision()I
    .locals 1

    .line 1333
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->getRevision()I

    move-result v0

    return v0
.end method

.method public getSortingCode()Ljava/lang/String;
    .locals 1

    .line 1668
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->getSortingCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSortingCodeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1685
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->getSortingCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSublocality()Ljava/lang/String;
    .locals 1

    .line 1937
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->getSublocality()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSublocalityBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1951
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-virtual {v0}, Lcom/google/type/PostalAddress;->getSublocalityBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAddressLines(ILjava/lang/String;)Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 2155
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 2156
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0, p1, p2}, Lcom/google/type/PostalAddress;->access$2400(Lcom/google/type/PostalAddress;ILjava/lang/String;)V

    return-object p0
.end method

.method public setAdministrativeArea(Ljava/lang/String;)Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 1797
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 1798
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0, p1}, Lcom/google/type/PostalAddress;->access$1500(Lcom/google/type/PostalAddress;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAdministrativeAreaBytes(Lcom/google/protobuf/ByteString;)Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 1837
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 1838
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0, p1}, Lcom/google/type/PostalAddress;->access$1700(Lcom/google/type/PostalAddress;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setLanguageCode(Ljava/lang/String;)Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 1519
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 1520
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0, p1}, Lcom/google/type/PostalAddress;->access$600(Lcom/google/type/PostalAddress;Ljava/lang/String;)V

    return-object p0
.end method

.method public setLanguageCodeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 1565
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 1566
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0, p1}, Lcom/google/type/PostalAddress;->access$800(Lcom/google/type/PostalAddress;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setLocality(Ljava/lang/String;)Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 1887
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 1888
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0, p1}, Lcom/google/type/PostalAddress;->access$1800(Lcom/google/type/PostalAddress;Ljava/lang/String;)V

    return-object p0
.end method

.method public setLocalityBytes(Lcom/google/protobuf/ByteString;)Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 1921
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 1922
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0, p1}, Lcom/google/type/PostalAddress;->access$2000(Lcom/google/type/PostalAddress;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setOrganization(Ljava/lang/String;)Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 2472
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 2473
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0, p1}, Lcom/google/type/PostalAddress;->access$3400(Lcom/google/type/PostalAddress;Ljava/lang/String;)V

    return-object p0
.end method

.method public setOrganizationBytes(Lcom/google/protobuf/ByteString;)Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 2500
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 2501
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0, p1}, Lcom/google/type/PostalAddress;->access$3600(Lcom/google/type/PostalAddress;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPostalCode(Ljava/lang/String;)Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 1615
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 1616
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0, p1}, Lcom/google/type/PostalAddress;->access$900(Lcom/google/type/PostalAddress;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPostalCodeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 1649
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 1650
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0, p1}, Lcom/google/type/PostalAddress;->access$1100(Lcom/google/type/PostalAddress;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRecipients(ILjava/lang/String;)Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 2365
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 2366
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0, p1, p2}, Lcom/google/type/PostalAddress;->access$2900(Lcom/google/type/PostalAddress;ILjava/lang/String;)V

    return-object p0
.end method

.method public setRegionCode(Ljava/lang/String;)Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 1415
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 1416
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0, p1}, Lcom/google/type/PostalAddress;->access$300(Lcom/google/type/PostalAddress;Ljava/lang/String;)V

    return-object p0
.end method

.method public setRegionCodeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 1451
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 1452
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0, p1}, Lcom/google/type/PostalAddress;->access$500(Lcom/google/type/PostalAddress;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRevision(I)Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 1347
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 1348
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0, p1}, Lcom/google/type/PostalAddress;->access$100(Lcom/google/type/PostalAddress;I)V

    return-object p0
.end method

.method public setSortingCode(Ljava/lang/String;)Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 1702
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 1703
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0, p1}, Lcom/google/type/PostalAddress;->access$1200(Lcom/google/type/PostalAddress;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSortingCodeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 1738
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 1739
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0, p1}, Lcom/google/type/PostalAddress;->access$1400(Lcom/google/type/PostalAddress;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSublocality(Ljava/lang/String;)Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 1965
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 1966
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0, p1}, Lcom/google/type/PostalAddress;->access$2100(Lcom/google/type/PostalAddress;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSublocalityBytes(Lcom/google/protobuf/ByteString;)Lcom/google/type/PostalAddress$Builder;
    .locals 1

    .line 1995
    invoke-virtual {p0}, Lcom/google/type/PostalAddress$Builder;->copyOnWrite()V

    .line 1996
    iget-object v0, p0, Lcom/google/type/PostalAddress$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/PostalAddress;

    invoke-static {v0, p1}, Lcom/google/type/PostalAddress;->access$2300(Lcom/google/type/PostalAddress;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
