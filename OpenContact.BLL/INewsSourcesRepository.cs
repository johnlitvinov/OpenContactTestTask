﻿using OpenContact.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OpenContact.BLL.Interfaces
{
    public interface INewsSourcesRepository
    {
        List<NewsSource> GetAllNewsSources();
    }
}
