.class final Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;
.super Landroid/os/AsyncTask;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PersistHistoryAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/ActivityChooserModel;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ActivityChooserModel;)V
    .registers 2
    .param p1, "this$0"    # Landroid/support/v7/widget/ActivityChooserModel;

    .prologue
    .line 1038
    iput-object p1, p0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1043
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .registers 20
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1044
    const/4 v14, 0x0

    aget-object v5, p1, v14

    check-cast v5, Ljava/util/List;

    .line 1045
    .local v5, "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;>;"
    const/4 v14, 0x1

    aget-object v6, p1, v14

    check-cast v6, Ljava/lang/String;

    .line 1047
    .local v6, "historyFileName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1050
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_b
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;

    iget-object v14, v14, Landroid/support/v7/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    const/4 v15, 0x0

    invoke-virtual {v14, v6, v15}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_15} :catch_81

    move-result-object v4

    .line 1056
    .local v4, "fos":Ljava/io/FileOutputStream;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v13

    .line 1059
    .local v13, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const/4 v14, 0x0

    :try_start_1b
    invoke-interface {v13, v4, v14}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1060
    const-string/jumbo v14, "UTF-8"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1061
    const-string/jumbo v14, "historical-records"

    const/4 v15, 0x0

    invoke-interface {v13, v15, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1063
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    .line 1064
    .local v12, "recordCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_35
    if-ge v7, v12, :cond_9d

    .line 1065
    const/4 v14, 0x0

    invoke-interface {v5, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;

    .line 1066
    .local v11, "record":Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;
    const-string/jumbo v14, "historical-record"

    const/4 v15, 0x0

    invoke-interface {v13, v15, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1067
    const-string/jumbo v14, "activity"

    .line 1068
    iget-object v15, v11, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v15

    .line 1067
    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v13, v0, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1069
    const-string/jumbo v14, "time"

    iget-wide v0, v11, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;->time:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v13, v0, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1070
    const-string/jumbo v14, "weight"

    iget v15, v11, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    invoke-static {v15}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v13, v0, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1071
    const-string/jumbo v14, "historical-record"

    const/4 v15, 0x0

    invoke-interface {v13, v15, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_7e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_7e} :catch_121
    .catch Ljava/lang/IllegalStateException; {:try_start_1b .. :try_end_7e} :catch_ec
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_7e} :catch_b7
    .catchall {:try_start_1b .. :try_end_7e} :catchall_158

    .line 1064
    add-int/lit8 v7, v7, 0x1

    goto :goto_35

    .line 1051
    .end local v7    # "i":I
    .end local v11    # "record":Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;
    .end local v12    # "recordCount":I
    .end local v13    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .local v4, "fos":Ljava/io/FileOutputStream;
    :catch_81
    move-exception v3

    .line 1052
    .local v3, "fnfe":Ljava/io/FileNotFoundException;
    sget-object v14, Landroid/support/v7/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Error writing historical record file: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1053
    const/4 v14, 0x0

    return-object v14

    .line 1077
    .end local v3    # "fnfe":Ljava/io/FileNotFoundException;
    .local v4, "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "i":I
    .restart local v12    # "recordCount":I
    .restart local v13    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :cond_9d
    :try_start_9d
    const-string/jumbo v14, "historical-records"

    const/4 v15, 0x0

    invoke-interface {v13, v15, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1078
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_a7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9d .. :try_end_a7} :catch_121
    .catch Ljava/lang/IllegalStateException; {:try_start_9d .. :try_end_a7} :catch_ec
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a7} :catch_b7
    .catchall {:try_start_9d .. :try_end_a7} :catchall_158

    .line 1090
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;

    const/4 v15, 0x1

    iput-boolean v15, v14, Landroid/support/v7/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    .line 1091
    if-eqz v4, :cond_b3

    .line 1093
    :try_start_b0
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b3} :catch_b5

    .line 1099
    .end local v7    # "i":I
    .end local v12    # "recordCount":I
    :cond_b3
    :goto_b3
    const/4 v14, 0x0

    return-object v14

    .line 1094
    .restart local v7    # "i":I
    .restart local v12    # "recordCount":I
    :catch_b5
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    goto :goto_b3

    .line 1087
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "i":I
    .end local v12    # "recordCount":I
    :catch_b7
    move-exception v9

    .line 1088
    .local v9, "ioe":Ljava/io/IOException;
    :try_start_b8
    sget-object v14, Landroid/support/v7/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Error writing historical record file: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_dd
    .catchall {:try_start_b8 .. :try_end_dd} :catchall_158

    .line 1090
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;

    const/4 v15, 0x1

    iput-boolean v15, v14, Landroid/support/v7/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    .line 1091
    if-eqz v4, :cond_b3

    .line 1093
    :try_start_e6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_e9
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_e9} :catch_ea

    goto :goto_b3

    .line 1094
    :catch_ea
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_b3

    .line 1085
    .end local v2    # "e":Ljava/io/IOException;
    .end local v9    # "ioe":Ljava/io/IOException;
    :catch_ec
    move-exception v10

    .line 1086
    .local v10, "ise":Ljava/lang/IllegalStateException;
    :try_start_ed
    sget-object v14, Landroid/support/v7/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Error writing historical record file: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_112
    .catchall {:try_start_ed .. :try_end_112} :catchall_158

    .line 1090
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;

    const/4 v15, 0x1

    iput-boolean v15, v14, Landroid/support/v7/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    .line 1091
    if-eqz v4, :cond_b3

    .line 1093
    :try_start_11b
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_11e
    .catch Ljava/io/IOException; {:try_start_11b .. :try_end_11e} :catch_11f

    goto :goto_b3

    .line 1094
    :catch_11f
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_b3

    .line 1083
    .end local v2    # "e":Ljava/io/IOException;
    .end local v10    # "ise":Ljava/lang/IllegalStateException;
    :catch_121
    move-exception v8

    .line 1084
    .local v8, "iae":Ljava/lang/IllegalArgumentException;
    :try_start_122
    sget-object v14, Landroid/support/v7/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Error writing historical record file: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_147
    .catchall {:try_start_122 .. :try_end_147} :catchall_158

    .line 1090
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;

    const/4 v15, 0x1

    iput-boolean v15, v14, Landroid/support/v7/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    .line 1091
    if-eqz v4, :cond_b3

    .line 1093
    :try_start_150
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_153
    .catch Ljava/io/IOException; {:try_start_150 .. :try_end_153} :catch_155

    goto/16 :goto_b3

    .line 1094
    :catch_155
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_b3

    .line 1089
    .end local v2    # "e":Ljava/io/IOException;
    .end local v8    # "iae":Ljava/lang/IllegalArgumentException;
    :catchall_158
    move-exception v14

    .line 1090
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Landroid/support/v7/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    .line 1091
    if-eqz v4, :cond_168

    .line 1093
    :try_start_165
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_168
    .catch Ljava/io/IOException; {:try_start_165 .. :try_end_168} :catch_169

    .line 1089
    :cond_168
    :goto_168
    throw v14

    .line 1094
    :catch_169
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_168
.end method
